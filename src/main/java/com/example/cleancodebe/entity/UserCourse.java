package com.example.cleancodebe.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "user_course",
        uniqueConstraints = @UniqueConstraint(columnNames = {"user_id", "course_id", "semester_taken"}))
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserCourse { //유저 기이수 과목
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "course_id")
    private Course course;

    // 성적표에서 추출
    @Column(nullable = false)
    private String semesterTaken; // "2-1" 같은 형식

    private String letterGrade; // "A+", "A", "B+"...

    // 점수 계산/필터링에 유리
    @Column(nullable = false)
    private boolean completed; // 이수 완료 여부 (성적표 기반이면 true)

    // 선택: 성적계수(1.0, 0.95...)를 미리 저장해두면 계산이 빨라짐
    private Double gradeWeight;
}
