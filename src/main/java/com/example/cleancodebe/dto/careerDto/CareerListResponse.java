package com.example.cleancodebe.dto.careerDto;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CareerListResponse {
    private Long id;
    private String majorCategory;
    private String middleCategory;
    private String name;
}
