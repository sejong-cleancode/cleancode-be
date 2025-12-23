package com.example.cleancodebe.entity.course;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(
        name = "course",
        indexes = {
                @Index(name = "idx_course_department", columnList = "department"),
                @Index(name = "idx_course_semester", columnList = "recommended_semester")
        },
        uniqueConstraints = {
                // 같은 학과에서 같은 과목명은 중복 방지(필요시 dept 제거 가능)
                @UniqueConstraint(name = "uq_course_dept_name", columnNames = {"department", "name"})
        }
)
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * CSV: 학과
     */
    @Column(nullable = false, length = 100)
    private String department;

    /**
     * CSV: 교과목
     */
    @Column(nullable = false, length = 200)
    private String name;

    /**
     * CSV: 학기 (1~8)
     * - UI에서 1-1~4-2로 변환해서 보여주면 됨
     */
    @Column(name = "recommended_semester", nullable = false)
    private Integer recommendedSemester;

    /**
     * CSV: 기술스택 (comma-separated -> List로 저장)
     * 예: ["python", "sql", "pandas"]
     *
     * 별도 테이블: course_tech_stack (course_id, tech_stack)
     */
    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
            name = "course_tech_stack",
            joinColumns = @JoinColumn(name = "course_id"),
            uniqueConstraints = @UniqueConstraint(
                    name = "uq_course_tech",
                    columnNames = {"course_id", "tech_stack"}
            )
    )
    @Column(name = "tech_stack", nullable = false, length = 100)
    @Builder.Default
    private List<String> techStacks = new ArrayList<>();
}
