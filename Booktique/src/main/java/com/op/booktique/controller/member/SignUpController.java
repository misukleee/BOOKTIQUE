package com.op.booktique.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.op.booktique.service.member.SignUpService;

import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class SignUpController {

	@Autowired
	SignUpService signUpService;
	
	@GetMapping("/signUp")
	public String signUp() {
		log.info("회원가입 폼");
		return "member/signUp";
	}
	
	
	/**
	 * @param memId
	 * @return 
	 */
	@PostMapping("/checkId")
	@ResponseBody
	public int checkId(@RequestBody String memId) {
		log.info("아이디 중복확인");
	
		int cnt = signUpService.checkId(memId);
		log.info("아이디 중복확인 : " +cnt);
		System.out.println(cnt);
		System.out.println(">>"+memId);
		
		
		return cnt;
	}
}
