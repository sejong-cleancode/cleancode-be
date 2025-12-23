package com.example.cleancodebe.service.loginService;

import com.example.cleancodebe.dto.loginDto.MemberCommand;
import com.example.cleancodebe.dto.loginDto.SejongMemberInfo;

public interface UserProfileService {
    SejongMemberInfo getProfile(MemberCommand memberCommand);
}
