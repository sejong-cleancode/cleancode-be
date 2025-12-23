package com.example.cleancodebe.service.careerService;


import com.example.cleancodebe.dto.careerDto.CareerCategoryTreeResponse;
import com.example.cleancodebe.dto.careerDto.CareerDetailResponse;
import com.example.cleancodebe.dto.careerDto.CareerListResponse;
import com.example.cleancodebe.entity.career.Career;
import com.example.cleancodebe.repository.CareerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.util.*;

import static org.springframework.http.HttpStatus.NOT_FOUND;

@Service
@RequiredArgsConstructor
public class CareerService {

    private final CareerRepository careerRepository;

    /**
     * 대/중/소 트리 구조로 반환
     */
    @Transactional(readOnly = true)
    public CareerCategoryTreeResponse getCategoryTree() {
        List<Career> careers = careerRepository.findAllByOrderByMajorCategoryAscMiddleCategoryAscNameAsc();

        // major -> middle -> careers
        Map<String, Map<String, List<Career>>> grouped = new LinkedHashMap<>();

        for (Career c : careers) {
            grouped
                    .computeIfAbsent(c.getMajorCategory(), k -> new LinkedHashMap<>())
                    .computeIfAbsent(c.getMiddleCategory(), k -> new ArrayList<>())
                    .add(c);
        }

        CareerCategoryTreeResponse response = new CareerCategoryTreeResponse();

        for (Map.Entry<String, Map<String, List<Career>>> majorEntry : grouped.entrySet()) {
            CareerCategoryTreeResponse.MajorNode majorNode =
                    CareerCategoryTreeResponse.MajorNode.builder()
                            .name(majorEntry.getKey())
                            .build();

            for (Map.Entry<String, List<Career>> middleEntry : majorEntry.getValue().entrySet()) {
                CareerCategoryTreeResponse.MiddleNode middleNode =
                        CareerCategoryTreeResponse.MiddleNode.builder()
                                .name(middleEntry.getKey())
                                .build();

                for (Career c : middleEntry.getValue()) {
                    middleNode.getDetail().add(
                            CareerCategoryTreeResponse.CareerLeaf.builder()
                                    .id(c.getId())
                                    .name(c.getName())
                                    .build()
                    );
                }
                majorNode.getSub().add(middleNode);
            }

            response.getCategories().add(majorNode);
        }

        return response;
    }

    /**
     * 진로 상세(기술스택 포함)
     */
    @Transactional(readOnly = true)
    public CareerDetailResponse getCareer(Long careerId) {
        Career c = careerRepository.findById(careerId)
                .orElseThrow(() -> new ResponseStatusException(NOT_FOUND, "Career not found: " + careerId));

        // techStacks가 LAZY일 수 있으므로 트랜잭션 안에서 접근
        return CareerDetailResponse.builder()
                .id(c.getId())
                .majorCategory(c.getMajorCategory())
                .middleCategory(c.getMiddleCategory())
                .name(c.getName())
                .techStacks(c.getTechStacks())
                .build();
    }

    /**
     * (선택) 목록 조회 - 필터로도 사용 가능
     */
    @Transactional(readOnly = true)
    public List<CareerListResponse> list(String majorCategory, String middleCategory) {
        List<Career> careers;

        if (majorCategory != null && !majorCategory.isBlank() &&
                middleCategory != null && !middleCategory.isBlank()) {
            careers = careerRepository.findByMajorCategoryAndMiddleCategoryOrderByNameAsc(
                    majorCategory.trim(), middleCategory.trim()
            );
        } else if (majorCategory != null && !majorCategory.isBlank()) {
            careers = careerRepository.findByMajorCategoryOrderByMiddleCategoryAscNameAsc(majorCategory.trim());
        } else {
            careers = careerRepository.findAllByOrderByMajorCategoryAscMiddleCategoryAscNameAsc();
        }

        return careers.stream()
                .map(c -> CareerListResponse.builder()
                        .id(c.getId())
                        .majorCategory(c.getMajorCategory())
                        .middleCategory(c.getMiddleCategory())
                        .name(c.getName())
                        .build())
                .toList();
    }
}

