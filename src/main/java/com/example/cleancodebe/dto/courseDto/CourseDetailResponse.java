package com.example.cleancodebe.dto.courseDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CourseDetailResponse {
    private Long id;
    private String department;
    private String name;
    private Integer recommendedSemester; // 1~8
    private List<String> techStacks;
}
