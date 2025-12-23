package com.example.cleancodebe.service.loginService;

import com.example.cleancodebe.dto.loginDto.MemberCommand;
import com.example.cleancodebe.dto.loginDto.SejongMemberInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserProfileServiceImpl implements UserProfileService {

    private final SejongPortalLoginService sejongPortalLoginService;

    @Override
    public SejongMemberInfo getProfile(MemberCommand memberCommand) {
        return sejongPortalLoginService.getMemberAuthInfos(memberCommand);
    }
}
