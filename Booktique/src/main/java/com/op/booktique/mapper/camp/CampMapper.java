package com.op.booktique.mapper.camp;

import java.util.List;

import com.op.booktique.vo.camp.CampVO;

public interface CampMapper {

	public void insertCamp(CampVO campVO);

	//캠핑장목록
	public List<CampVO> campList(CampVO campVO);

	//캠핑장목록 필터링하기
	public List<CampVO> getCampByAreaCode(String areaCode);

	//캠핑 상세페이지
	public CampVO detail(String campNo);

}
