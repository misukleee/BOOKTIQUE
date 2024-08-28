package com.op.booktique.service.impl.sports;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.sports.SportsMapper;
import com.op.booktique.service.sports.SportsService;

@Service
public class SportsServiceImpl implements SportsService {

	@Autowired
	SportsMapper sportsMapper;

	@Override
	public void crawling() {

	}

}
