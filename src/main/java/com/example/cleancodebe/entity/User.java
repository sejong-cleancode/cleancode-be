package com.example.cleancodebe.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "users")
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // 학사 시스템에서 내려오는 값
    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String studentId; // 학번 (예: 20210001)

    @Column(nullable = false)
    private String major; // 학과명

    @Column(nullable = false)
    private Integer grade; // 학년 (1~4)

    @Column(nullable = false)
    private String status; // 재학/휴학 등

    @Column(nullable = false)
    private Integer completedSemester; // 이수 학기 수 (예: 5면 3-1까지 완료)

    // 성적표 업로드로 계산한 요약값(선택)
    private Integer totalCredits; // 총 이수학점
    private Double gpa;          // 평점 평균
}

