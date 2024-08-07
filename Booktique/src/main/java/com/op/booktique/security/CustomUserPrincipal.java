package com.op.booktique.security;

import java.util.Collection;
import java.util.Collections;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.op.booktique.vo.MemberVO;

/**
 * CustomUserPrincipal
 * 사용자 세부 정보를 포함하는 사용자 Principal 클래스.
 * Spring Security에서 인증된 사용자 정보를 제공합니다.
 * 모든 사용자는 ROLE_USER 권한을 가집니다.
 */
public class CustomUserPrincipal extends User {

    private MemberVO memberVO;

    public CustomUserPrincipal(MemberVO memberVO) {
        super(memberVO.getMemId(), memberVO.getMemPw(),
              Collections.singletonList(new SimpleGrantedAuthority("ROLE_USER")));
        this.memberVO = memberVO;
    }

    public MemberVO getMemberVO() {
        return memberVO;
    }

    private void setMemberVO(MemberVO memberVO) {
        this.memberVO = memberVO;
    }
}
