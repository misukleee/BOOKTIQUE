package com.op.booktique.controller.play;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.op.booktique.service.play.PlayService;
import com.op.booktique.vo.show.ShowVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PlayController {
	
	@Autowired
	PlayService playService;
	
	@GetMapping("/play/main")
	public String playMain(Model model) {
		log.info("연극 메인");
		
		List<ShowVo> playList = playService.playList();
		log.info("연극 메인 -> playList : {}" ,playList);
		
		ShowVo showVo = new ShowVo();
		List<ShowVo> playHotList = playService.playHot(showVo);
		log.info("연극 메인 -> playHotList : {}", playHotList);
		
		model.addAttribute("playList", playList);  
		model.addAttribute("playHotList", playHotList);  
		
		return "play/playMain";
	}
	
	
	@PostMapping("/play/playRecList")
	@ResponseBody
	public List<ShowVo> areaRecList(@RequestBody ShowVo showVo) {
		log.info("연극 메인 지도");
		log.info("연극 메인 지도 -> showVo : {}", showVo);
		
		List<ShowVo> playRecList = playService.playRec(showVo);
		log.info("연극 메인 지도 -> playRecList : {}", playRecList);
		
		return playRecList;
	}
	

 
	

}
