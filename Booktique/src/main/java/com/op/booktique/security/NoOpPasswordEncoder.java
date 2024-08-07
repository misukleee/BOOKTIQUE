package com.op.booktique.security;

import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.extern.slf4j.Slf4j;

// 비밀번호 인코딩 및 매칭을 처리하는 클래스. 실제로 비밀번호를 인코딩하지 않고 원본 그대로 반환하는 "No Operation" 인코더.

@Slf4j
public class NoOpPasswordEncoder implements PasswordEncoder {
	
	//비밀번호를 받아서 인코딩 해주는 메소드
	@Override
	public String encode(CharSequence rawPassword) {
		log.warn("before encode : " + rawPassword);
		return rawPassword.toString();
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		//사용자의 비밀번호를 받은 거랑 DB의 비밀번호랑 비교
		log.warn("matches : " + rawPassword + " : " + encodedPassword);
		//일치하면 true를 리턴, 불일치하면 false를 리턴
		return rawPassword.toString().equals(encodedPassword);
	}
}
