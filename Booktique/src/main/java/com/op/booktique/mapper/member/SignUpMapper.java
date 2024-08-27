package com.op.booktique.mapper.member;

import com.op.booktique.vo.member.MemberVO;

public interface SignUpMapper {

	public int checkId(String memId);

	public int signUpAjax(MemberVO memberVO);

}
