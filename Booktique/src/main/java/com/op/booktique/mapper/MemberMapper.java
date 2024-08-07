package com.op.booktique.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.op.booktique.vo.MemberVO;

@Mapper
public interface MemberMapper {
	//로그인
    public MemberVO detail(String empId);

    //정보 수정
	public int updateMember(MemberVO memberVO);

	//아이디 찾기
	public List<MemberVO> findMemberByNameBirthdateAndPhone(@Param("memNm") String memNm, 
            @Param("memBirth") Date memBirth, 
            @Param("memPhone") String memPhone);
	
	//비밀번호 찾기
	public MemberVO findMemberByIdAndEmail(@Param("memId") String memId, @Param("memEmail") String memEmail);
}
