package com.example.cleancodebe.dto.careerDto;

import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CareerCategoryTreeResponse {

    @Builder.Default
    private List<MajorNode> categories = new ArrayList<>();

    @Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
    public static class MajorNode {
        private String name; // 대분류
        @Builder.Default
        private List<MiddleNode> sub = new ArrayList<>();
    }

    @Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
    public static class MiddleNode {
        private String name; // 중분류
        @Builder.Default
        private List<CareerLeaf> detail = new ArrayList<>();
    }

    @Getter @Setter @NoArgsConstructor @AllArgsConstructor @Builder
    public static class CareerLeaf {
        private Long id;     // careerId
        private String name; // 소분류(진로명)
    }
}

