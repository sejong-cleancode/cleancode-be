package com.example.cleancodebe.controller;

import com.example.cleancodebe.dto.loginDto.MemberCommand;
import com.example.cleancodebe.dto.loginDto.SejongMemberInfo;
import com.example.cleancodebe.service.loginService.SejongPortalLoginService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Tag(name = "로그인", description = "로그인 관련 API")
@RestController
@Slf4j
@AllArgsConstructor
@RequestMapping("/api/auth/login")
public class LoginController {
    private final SejongPortalLoginService sejongLoginService;

    /**
     * 세종대학교 포털 로그인
     * 포털 로그인 -> 고전독서 사이트 SSO 인증 -> 사용자 정보 파싱 및 반환
     */
    @PostMapping
    public ResponseEntity<SejongMemberInfo> login(@RequestBody MemberCommand command) {
        log.info("세종대 포털 로그인 시도: {}", command.getSejongPortalId());
        return ResponseEntity.ok(sejongLoginService.getMemberAuthInfos(command));
    }

}
