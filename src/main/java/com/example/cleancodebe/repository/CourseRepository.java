package com.example.cleancodebe.repository;

import com.example.cleancodebe.entity.course.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Long> {
}
