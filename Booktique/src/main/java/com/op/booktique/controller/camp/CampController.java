package com.op.booktique.controller.camp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.op.booktique.service.camp.CampService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/camp")
public class CampController {
	
	@Autowired
	private CampService campService;

	@GetMapping("/list")
	public String campList() {
		String url = "https://m.thankqcamping.com/resv/list.hbb?site_tp=BB000&inAppisInit=Y";
		campService.crawCampData(url);
		return "redirect:/camp/campList";
	}
}
