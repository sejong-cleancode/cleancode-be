package com.example.cleancodebe.service;

import com.example.cleancodebe.entity.StudentCourse;
import com.example.cleancodebe.repository.StudentCourseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CourseService {

    private final StudentCourseRepository studentCourseRepository;

    private Set<String> getCompletedCourseNames(String studentId) {
        return studentCourseRepository.findByStudentId(studentId)
                .stream()
                .map(StudentCourse::getCourseName)
                .collect(Collectors.toSet());
    }
}
