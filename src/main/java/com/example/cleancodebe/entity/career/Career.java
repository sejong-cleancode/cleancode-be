package com.example.cleancodebe.entity.career;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
        name = "career",
        indexes = {
                @Index(name = "idx_career_major", columnList = "major_category"),
                @Index(name = "idx_career_middle", columnList = "middle_category")
        },
        uniqueConstraints = {
                // 대/중/소가 같으면 동일 진로로 취급
                @UniqueConstraint(
                        name = "uq_career_category",
                        columnNames = {"major_category", "middle_category", "name"}
                )
        }
)
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Career {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * CSV: 대분류
     */
    @Column(name = "major_category", nullable = false, length = 100)
    private String majorCategory;

    /**
     * CSV: 중분류
     */
    @Column(name = "middle_category", nullable = false, length = 100)
    private String middleCategory;

    /**
     * CSV: 소분류 (진로명)
     * 예: "데이터 분석가"
     */
    @Column(nullable = false, length = 150)
    private String name;

    /**
     * CSV: 기술스택 (comma-separated -> List로 저장)
     * 예: ["python", "sql", "statistics"]
     *
     * 별도 테이블: career_tech_stack (career_id, tech_stack)
     */
    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
            name = "career_tech_stack",
            joinColumns = @JoinColumn(name = "career_id"),
            uniqueConstraints = @UniqueConstraint(
                    name = "uq_career_tech",
                    columnNames = {"career_id", "tech_stack"}
            )
    )
    @Column(name = "tech_stack", nullable = false, length = 100)
    @Builder.Default
    private List<String> techStacks = new ArrayList<>();
}
