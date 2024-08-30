package com.op.booktique.service.concert;

import java.util.List;

import com.op.booktique.vo.concert.ConcertVO;

public interface ConcertService {
	public List<ConcertVO> list();
	public List<ConcertVO> listRandom(int num);
	public ConcertVO selOne(String showSq);
}
