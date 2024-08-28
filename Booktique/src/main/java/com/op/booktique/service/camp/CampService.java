package com.op.booktique.service.camp;

import java.util.List;

import com.op.booktique.vo.camp.CampVO;

public interface CampService {

	
	public void crawlingData(int startPage, int endPage);

	//캠핑장 목록 가져오기.
	public List<CampVO> campList(CampVO campVO);

	//캠핑장목록 필터링하기
	public List<CampVO> getCampByAreaCode(String areaCode);

	//캠핑 상세페이지
	public CampVO detail(String campNo);

}
