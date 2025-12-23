package com.example.cleancodebe.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "career")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
class Career {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name; // 소분류명 (예: "데이터 분석가")

    // 분류
    private String majorCategory;  // 예: "IT/개발"
    private String middleCategory; // 예: "데이터"


}
