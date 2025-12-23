package com.example.cleancodebe.dto.loginDto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Service;

@Getter
@Setter
@Service
public class MemberCommand {
    String sejongPortalId;
    String sejongPortalPassword;

}