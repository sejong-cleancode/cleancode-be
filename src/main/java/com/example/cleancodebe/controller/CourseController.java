package com.example.cleancodebe.controller;

import com.example.cleancodebe.service.courseService.CourseService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "강의", description = "강의 관련 API")
@RestController("/api/course")
@AllArgsConstructor
public class CourseController {

    private final CourseService courseService;

    @GetMapping("/{courseId}")
    public ResponseEntity<?> get(@PathVariable Long courseId) {
        return ResponseEntity.ok(courseService.get(courseId));
    }

}
