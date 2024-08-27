package com.op.booktique.service.member;

import com.op.booktique.vo.member.MemberVO;

public interface SignUpService {

	public int checkId(String memId);

	public int signUpAjax(MemberVO memberVO);

}
