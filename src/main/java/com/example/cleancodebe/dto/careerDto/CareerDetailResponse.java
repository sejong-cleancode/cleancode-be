package com.example.cleancodebe.dto.careerDto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CareerDetailResponse {
    private Long id;
    private String majorCategory;
    private String middleCategory;
    private String name; // 소분류명(진로명)
    private List<String> techStacks;
}
