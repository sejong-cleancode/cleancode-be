package com.example.cleancodebe.controller;

import com.example.cleancodebe.service.StudentDataService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.responses.ApiResponse;

import java.util.Map;

@RestController
@RequestMapping("/academic/upload-excel")
@RequiredArgsConstructor
public class StudentDataController {

    private final StudentDataService studentDataService;

    @Operation(
            summary = "엑셀 파일 업로드",
            description = "기이수 성적 엑셀 파일(.xlsx)을 업로드하고, 과목 정보를 서버에 저장합니다."
    )
    @ApiResponse(responseCode = "200", description = "업로드 성공")
    @PostMapping(value = "/{studentId}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<?> uploadCourseExcel(
            @RequestParam("file") MultipartFile file,
            @PathVariable String studentId
    ) {
        try {
            studentDataService.parseAndSaveCourses(file, studentId);
            return ResponseEntity.ok(
                    Map.of(
                            "status", 200,
                            "message", "엑셀 파일 업로드 성공"
                    )
            );
        } catch (RuntimeException e) {
            return ResponseEntity.badRequest().body(
                    Map.of(
                            "status", 400,
                            "code", "BAD_REQUEST",
                            "message", e.getMessage()
                    )
            );
        }
    }
}
