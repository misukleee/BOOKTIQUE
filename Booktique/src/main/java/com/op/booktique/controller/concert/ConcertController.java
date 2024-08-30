package com.op.booktique.controller.concert;

import java.util.ArrayList;
import java.util.Iterator;
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
	
	/**
	 * 콘서트 메인 페이지로 이동 
	 */
	@GetMapping("/main")
	public String mainPage(Model model) {
		
		log.info("콘서트 메인 페이지 이동");
		
		List<ConcertVO> concertList = concertService.list();
		List<ConcertVO> bigbannerList = concertService.listRandom(15);
		List<ConcertVO> minibannerList = concertService.listRandom(6);
		
//		System.out.println("콘서트 메인 페이지 이동");
//		List<ConcertVO> concertList = new ArrayList<ConcertVO>();
//		minibannerList = new ArrayList<ConcertVO>();
//		ConcertVO test1 = new ConcertVO();
//		test1.setShowSq("C2024081600001");
//		test1.setShowName("비투비 콘서트");
//		test1.setSubImg("올림픽공원 체조경기장");
//		test1.setDetailImg("2024.7.12");
//		test1.setMainImg("/resources/img/콘서트이미지.gif");
//		minibannerList.add(test1);
//		ConcertVO test2 = new ConcertVO();
//		test2.setShowSq("C2024081600002");
//		test2.setShowName("이창섭 단독 콘서트");
//		test2.setSubImg("올림픽공원 핸드볼경기장");
//		test2.setDetailImg("2024.9.12");
//		test2.setMainImg("/resources/img/콘서트이미지.gif");
//		minibannerList.add(test2);
//		minibannerList.add(test2);
//		minibannerList.add(test2);
//		minibannerList.add(test2);
//		minibannerList.add(test2);
		
		for(int i=0; i<minibannerList.size(); i++) {
			String ext = ".png";
			if(i==4) ext = ".jpeg";
			minibannerList.get(i).setBannerImg("/resources/img/concert/minibanner"+(i+1)+ext);
		}
		log.info("miniList : "+minibannerList);
		
		model.addAttribute("allList",concertList);
		model.addAttribute("bigbannerList",bigbannerList);
		model.addAttribute("minibannerList",minibannerList);
		
		return "concert/main";
//		return "concert/test";
	}
	
	/**
	 * 콘서트 상세 페이지로 이동
	 * @param concertVO 콘서트 번호 담은 vo
	 */
	@GetMapping("/detail")
	public String detailPage(Model model, ConcertVO concertVO) {
		
		log.info("콘서트 상세 페이지 이동");
		
		log.info("1 concertVO : "+concertVO);		
		concertVO = concertService.selOne(concertVO.getShowSq());
		log.info("2 concertVO : "+concertVO);
		
		model.addAttribute("concertOne", concertVO);
		
		return "concert/detail";
	}

}
