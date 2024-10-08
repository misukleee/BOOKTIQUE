package com.op.booktique.service.impl.concert;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.concert.ConcertMapper;
import com.op.booktique.service.concert.ConcertService;
import com.op.booktique.vo.concert.ConcertVO;

@Service
public class ConcertServiceImpl implements ConcertService{
	
	@Autowired
	private ConcertMapper concertMapper;

	@Override
	public List<ConcertVO> list() {
		return concertMapper.list();
	}
	
	@Override
	public List<ConcertVO> listRandom(int num) {
		return concertMapper.listRandom(num);
	}

	@Override
	public ConcertVO selOne(String showSq) {
		return concertMapper.selOne(showSq);
	}
	
}
