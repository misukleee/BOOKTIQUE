package com.op.booktique.vo.sports;

import lombok.Data;

@Data
public class GameVO {

	// GAME
	private int gameSq;             //경기번호?
	private String stadiumId;		//경기장ID
	private String teamId;			//팀ID
	private String gameOpenDt;		//예매오픈일
	private String gameCloseDt;		//예매마감일
	private String gameDt;			//경기일
	private String gameStartTm;		//경기시작시간
	private String gameHt;			//홈팀
	private String gameAt;			//원정팀
	
	private TeamVO teamVOList;
}
