package com.example.cleancodebe.controller;

import com.example.cleancodebe.dto.loginDto.MemberCommand;
import com.example.cleancodebe.dto.loginDto.SejongMemberInfo;
import com.example.cleancodebe.service.loginService.UserProfileService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Tag(name = "유저", description = "유저 관련 API")
@RestController
@AllArgsConstructor
@Slf4j
@RequestMapping("/api/user")
public class UserController {

    private final UserProfileService userProfileService;

    @Operation(summary = "유저 프로필 조회", description = "세종대 포털 계정 정보로 유저 프로필을 조회합니다.")
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "조회 성공"),
            @ApiResponse(responseCode = "400", description = "잘못된 요청"),
            @ApiResponse(responseCode = "401", description = "인증 실패"),
            @ApiResponse(responseCode = "500", description = "서버 오류")
    })
    @GetMapping("/profile")
    public ResponseEntity<SejongMemberInfo> getProfile(
            @Parameter(description = "세종대 포털 아이디", required = true, example = "20210001")
            @RequestParam String sejongPortalId,
            @Parameter(description = "세종대 포털 비밀번호", required = true, example = "password123")
            @RequestParam String sejongPortalPassword
    ) {
        log.info("유저 프로필 조회: {}", sejongPortalId);
        MemberCommand command = new MemberCommand();
        command.setSejongPortalId(sejongPortalId);
        command.setSejongPortalPassword(sejongPortalPassword);

        return ResponseEntity.ok(userProfileService.getProfile(command));
    }
}
