package com.example.cleancodebe.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "course")
@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Course {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name; // 과목명

    @Column(nullable = false)
    private Integer credit; // 학점

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CourseCategory category; // 전필, 전선

    // 예: {"programming": 0.3, "dataAnalysis": 0.6, "statistics": 0.1}
    // MySQL이면 columnDefinition="json" 추천 (없으면 TEXT로도 OK)
    @Column(columnDefinition = "json")
    private String skillTagsJson;

    // 난이도/가중치(선택) - 점수 계산에 쓰기 좋음
    private Integer level; // 1~5

    // 개설학기 정보가 있으면 로드맵 배치 시 유리(선택)
    private String offeredSemester; // "1-1", "2-2" 등 or "SPRING/FALL"
}

