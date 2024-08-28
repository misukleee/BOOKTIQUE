package com.op.booktique.mapper.sports;

import com.op.booktique.vo.sports.GameVO;

public interface SportsMapper {

//	public List<GameVO> getBaseballMain();
	
	public void insertGame(GameVO gameVO);
		
	public void insertMatch(GameVO gameVO);

}
