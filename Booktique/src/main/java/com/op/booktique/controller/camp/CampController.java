package com.op.booktique.controller.camp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.op.booktique.service.camp.CampService;
import com.op.booktique.vo.camp.CampVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CampController {
	
	@Autowired
	private CampService campService;
	
	//캠핑메인
	@GetMapping("/camp/main")
	public String campList(Model model, CampVO campVO) {
		log.info("camp main");
		
		//캠핑장목록 가져오기
		List<CampVO> campList = this.campService.campList(campVO);
		
		model.addAttribute("campList", campList);
		
		return "camp/main";
	}
	
	//크롤링
	@GetMapping("/camp/insert")
	public String insertCamp() {
		// 크롤링 URL 페이지
		int startPage = 1;
		int endPage = 10;
		campService.crawlingData(startPage, endPage);
		
		return "camp/insert";
	}
	
	//지역코드에 따라 필터링하기!
	@GetMapping("/filterCamp")
	@ResponseBody
	public List<CampVO> filterCamp(@RequestParam String areaCode){
		List<CampVO> filteredCamp;
		
		if ("전체".equals(areaCode)) {
			filteredCamp = campService.campList(new CampVO()); // 모든 캠핑장 반환
		} else {
			filteredCamp = campService.getCampByAreaCode(areaCode); // 지역 코드로 필터링된 캠핑장 반환
		}
		return filteredCamp;
	}
	
	//캠핑 상세페이지
	@GetMapping("/camp/detail")
	public String detail(Model model, @RequestParam("camp_no") String campNo) {
		log.info("상세페이지 campNo: {}", campNo);
		CampVO campVO = this.campService.detail(campNo);
		
		model.addAttribute("campVO", campVO);
		log.info("detail->campVO : " + campVO);
		
		return "camp/detail";
		
	}
}
