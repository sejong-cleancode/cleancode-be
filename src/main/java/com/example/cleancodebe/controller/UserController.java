package com.example.cleancodebe.controller;

import com.example.cleancodebe.dto.loginDto.MemberCommand;
import com.example.cleancodebe.dto.loginDto.SejongMemberInfo;
import com.example.cleancodebe.service.loginService.UserProfileService;
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

    @GetMapping("/profile")
    public ResponseEntity<SejongMemberInfo> getProfile(
            @RequestParam String sejongPortalId,
            @RequestParam String sejongPortalPassword
    ) {
        log.info("유저 프로필 조회: {}", sejongPortalId);
        MemberCommand command = new MemberCommand();
        command.setSejongPortalId(sejongPortalId);
        command.setSejongPortalPassword(sejongPortalPassword);

        return ResponseEntity.ok(userProfileService.getProfile(command));
    }
}
