package com.example.cleancodebe.service.courseService;

import com.example.cleancodebe.dto.courseDto.CourseDetailResponse;
import com.example.cleancodebe.entity.course.Course;
import com.example.cleancodebe.repository.CourseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import static org.springframework.http.HttpStatus.NOT_FOUND;

@Service
@RequiredArgsConstructor
public class CourseService {

    private final CourseRepository courseRepository;

    @Transactional(readOnly = true)
    public CourseDetailResponse get(Long courseId) {
        Course c = courseRepository.findById(courseId)
                .orElseThrow(() -> new ResponseStatusException(NOT_FOUND, "Course not found: " + courseId));

        return CourseDetailResponse.builder()
                .id(c.getId())
                .department(c.getDepartment())
                .name(c.getName())
                .recommendedSemester(c.getRecommendedSemester())
                .techStacks(c.getTechStacks())
                .build();
    }

}
