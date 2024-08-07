package com.op.booktique.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignUpController {

	@GetMapping("/signUp")
	public String signUp() {
		
		return "member/signUp";
	}
}
