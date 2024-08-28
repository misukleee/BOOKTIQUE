package com.op.booktique.controller.concert;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.op.booktique.service.concert.ConcertService;
import com.op.booktique.vo.concert.ConcertVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/concert")
public class ConcertController {

	@Autowired
	private ConcertService concertService;
	
	@GetMapping("/main")
	public String mainPage(Model model) {
		
		log.debug("콘서트 메인 페이지 이동");
		
//		List<ConcertVO> concertList = concertService.list();
		
		System.out.println("콘서트 메인 페이지 이동");
		List<ConcertVO> concertList = new ArrayList<ConcertVO>();
		ConcertVO test1 = new ConcertVO();
		test1.setShowName("비투비 콘서트");
		test1.setSubImg("올림픽공원 체조경기장");
		test1.setDetailImg("2024.7.12");
		test1.setMainImg("/resources/img/콘서트이미지.gif");
		concertList.add(test1);
		ConcertVO test2 = new ConcertVO();
		test2.setShowName("이창섭 단독 콘서트");
		test2.setSubImg("올림픽공원 핸드볼경기장");
		test2.setDetailImg("2024.9.12");
		test2.setMainImg("/resources/img/콘서트이미지.gif");
		concertList.add(test2);
		concertList.add(test2);
		concertList.add(test2);
		concertList.add(test2);
		concertList.add(test2);
		
		model.addAttribute("allList",concertList);
		
		return "concert/main";
//		return "concert/test";
	}

}
