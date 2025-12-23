package com.example.cleancodebe.repository;

import com.example.cleancodebe.entity.course.Course;
import org.springframework.data.repository.CrudRepository;

public interface CourseRepository extends CrudRepository<Course, Long> {
}
