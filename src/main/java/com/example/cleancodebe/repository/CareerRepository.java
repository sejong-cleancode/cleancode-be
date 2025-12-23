package com.example.cleancodebe.repository;

import com.example.cleancodebe.entity.career.Career;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CareerRepository extends JpaRepository<Career, Long> {

    // 트리 생성용: 정렬된 전체 목록
    List<Career> findAllByOrderByMajorCategoryAscMiddleCategoryAscNameAsc();

    // (선택) 필터 목록 조회용
    List<Career> findByMajorCategoryAndMiddleCategoryOrderByNameAsc(String majorCategory, String middleCategory);

    // (선택) 대분류로만
    List<Career> findByMajorCategoryOrderByMiddleCategoryAscNameAsc(String majorCategory);
}

