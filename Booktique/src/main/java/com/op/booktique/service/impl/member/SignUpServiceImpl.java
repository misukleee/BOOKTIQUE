package com.op.booktique.service.impl.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.member.SignUpMapper;
import com.op.booktique.service.member.SignUpService;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpMapper signUpMapper;

	@Override
	public int checkId(String memId) {
		return this.signUpMapper.checkId(memId);
	}

}
