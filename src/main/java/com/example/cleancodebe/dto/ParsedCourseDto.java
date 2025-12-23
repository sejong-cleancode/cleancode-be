package com.example.cleancodebe.dto;

import com.example.cleancodebe.entity.student.StudentCourseStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ParsedCourseDto {
    private String courseName;
    private String year;
    private String semester;
    private String courseType;
    private Integer credits;
    private String grade;
    private Double gradePoint;
    private StudentCourseStatus status;
}