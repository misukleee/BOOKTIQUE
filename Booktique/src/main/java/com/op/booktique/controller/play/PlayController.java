package com.op.booktique.controller.play;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.op.booktique.service.play.PlayService;
import com.op.booktique.vo.show.ShowVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PlayController {
	
	@Autowired
	PlayService playService;
	
	@GetMapping("/play/main")
	public String playMain() {
		log.info("연극 메인");
		return "play/playMain";
	}
	
	@GetMapping("/play/list")
	public List<ShowVo> playList(Model model) {
		
		log.info("연극 전체보기");
		
		List<ShowVo> playList = playService.playList();
		log.info("연극 전체보기 -> playList : {}" ,playList);
		
		model.addAttribute("playList", playList); 
		
		return playList;
	}
	
	

}
