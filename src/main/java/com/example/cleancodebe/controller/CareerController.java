package com.example.cleancodebe.controller;

import com.example.cleancodebe.dto.careerDto.CareerCategoryTreeResponse;
import com.example.cleancodebe.dto.careerDto.CareerDetailResponse;
import com.example.cleancodebe.dto.careerDto.CareerListResponse;
import com.example.cleancodebe.service.careerService.CareerService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Tag(name = "진로", description = "진로 관련 API")
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/careers")
public class CareerController {

    private final CareerService careerService;

    @Operation(summary = "진로 카테고리 트리 조회", description = "진로 선택을 위한 대/중/소 분류 트리를 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "500", description = "서버 오류")
    })
    @GetMapping("/categories")
    public CareerCategoryTreeResponse categories() {
        return careerService.getCategoryTree();
    }

    @Operation(summary = "진로 상세 조회", description = "특정 진로의 상세 정보(기술스택 포함)를 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "404", description = "진로를 찾을 수 없음"),
            @ApiResponse(responseCode = "500", description = "서버 오류")
    })
    @GetMapping("/{careerId}")
    public CareerDetailResponse get(
            @Parameter(description = "진로 ID", required = true, example = "1")
            @PathVariable Long careerId
    ) {
        return careerService.getCareer(careerId);
    }

    @Operation(summary = "진로 목록 조회", description = "대분류 및 중분류 필터를 통해 진로 목록을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "500", description = "서버 오류")
    })
    @GetMapping
    public List<CareerListResponse> list(
            @Parameter(description = "대분류 (예: IT/개발)", example = "IT/개발")
            @RequestParam(required = false, name = "major") String major,
            @Parameter(description = "중분류 (예: 데이터)", example = "데이터")
            @RequestParam(required = false, name = "middle") String middle
    ) {
        return careerService.list(major, middle);
    }
}
