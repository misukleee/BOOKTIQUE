package com.op.booktique.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;

import com.op.booktique.mapper.MemberMapper;
import com.op.booktique.service.EmailService;
import com.op.booktique.service.MailServiceInter;

import lombok.extern.slf4j.Slf4j;

// 로그인 및 로그아웃 처리, 접근 거부 처리, 사용자 ID 및 비밀번호 찾기 기능 등을 담당하는 컨트롤러

@Slf4j
@Controller
public class SecurityController {
	
	// DI / IoC
    // passwordEncoder 객체는 security-context.xml의 bean에 등록되어 있음
    @Autowired
    PasswordEncoder passwordEncoder;
    
    @Autowired
    MemberMapper memberMapper;
    
    @Autowired
    EmailService emailService;
    
    @Autowired
    MailServiceInter registerMail;
}
