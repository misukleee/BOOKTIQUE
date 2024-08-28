package com.op.booktique.controller.sports;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.op.booktique.service.sports.SportsService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/sports")
@Controller
public class SportsController {
	
	@Autowired
	SportsService sportsService;
	
	//스포츠 선택해서 들어간 상태, 스포츠 메인
	@GetMapping("/main")
	public String main() {
		log.info("스포츠 메인홈!");
		return "sports/main";
	}

	
	//야구 메인페이지에서 팀 선택해서 들어간 상태
	@GetMapping("/baseball")
	public String baseball(Model model) {
		log.info("야구다!!!");
		
//		List<GameVO> baseballMain = this.sportsService.getBaseballMain();
//		log.info("baseballMain -> {}", baseballMain);
		
//		model.addAttribute("baseballMain", baseballMain);
		
		return "sports/baseball";
	}
	
	
	//야구에서 팀 선택해서 들어간 상태
	@GetMapping("/selectteam")
	public String selectteam() {
		log.info("되나요????");
		return "sports/selectteam";
	}
	
	/*
	//크롤링을 해보장
	@GetMapping("/crawling")
	public String crawling() {
		log.info("크롤링을 해보자요");
		return "sports/crawling";
	}
	*/
	
	//배구
	@GetMapping("/volleyball")
	public String volleyball() {
		log.info("되나요????");
		return "sports/volleyball";
	}
	
}
