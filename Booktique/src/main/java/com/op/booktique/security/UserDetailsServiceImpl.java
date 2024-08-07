package com.op.booktique.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.op.booktique.mapper.MemberMapper;
import com.op.booktique.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

// 데이터베이스에서 사용자의 인증 정보를 조회하여 UserDetails 객체로 변환하는 서비스 클래스. 사용자 인증을 처리하는 핵심 클래스.

@Slf4j
@Service
@Primary
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	private MemberMapper memberMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("CustomUserDetailsService->username : " + username);

		// select
		MemberVO memberVO = this.memberMapper.detail(username);
		log.info("CustomUserDetailsService->employeeVO : " + memberVO);
		if (memberVO == null) {
			throw new UsernameNotFoundException("User not found");
		}
		return memberVO == null ? null : new CustomUserPrincipal(memberVO);
	}
}
