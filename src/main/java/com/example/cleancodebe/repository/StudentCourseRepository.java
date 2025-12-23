package com.example.cleancodebe.repository;

import com.example.cleancodebe.entity.StudentCourse;
import com.example.cleancodebe.entity.StudentCourseStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentCourseRepository extends JpaRepository<StudentCourse, Long> {

    List<StudentCourse> findByStudentId(String studentId);

    boolean existsByStudentIdAndCourseName(String studentId, String courseName);

    Optional<StudentCourse> findByStudentIdAndCourseNameAndManualIsTrue(String studentId, String courseName);

    List<StudentCourse> findAllByStudentIdAndStatus(String studentId, StudentCourseStatus status);

    Optional<StudentCourse> findByStudentIdAndCourseName(String studentId, String courseName);

    List<StudentCourse> findAllByStudentIdAndManualIsTrue(String studentId);

    boolean existsByStudentId(String studentId);
}
