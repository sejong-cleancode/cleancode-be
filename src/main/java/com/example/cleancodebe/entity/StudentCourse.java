package com.example.cleancodebe.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class StudentCourse extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String studentId;

    @Column(nullable = false)
    private String courseName;

    @Column(nullable = false)
    private String year;

    @Column(nullable = false)
    private String semester;

    @Column(nullable = false)
    private String courseType;

    @Column(nullable = false)
    private Integer credits;

    @Column(nullable = false)
    private String grade;

    @Column(nullable = false)
    private Double gradePoint;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private StudentCourseStatus status;

    @Column(nullable = false, name = "`manual`")
    private boolean manual;

    @Column(nullable = false)
    private LocalDateTime createdAt;

    public void updateStatus(StudentCourseStatus status) {
        this.status = status;
    }

}
