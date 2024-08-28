package com.op.booktique.controller.sports;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import com.op.booktique.mapper.sports.SportsMapper;
import com.op.booktique.vo.sports.GameVO;


public class SportsCrawler {
	
	@Autowired
	SportsMapper sportsMapper;
	
	public static void main(String[] args) {
		try {
			String url = "https://ticket.interpark.com/Contents/Sports";
			Document doc = Jsoup.connect(url).get();
			Elements gameschedule = doc.select("ul > li");

            for (Element gamesche : gameschedule) {
            	GameVO gameVO = new GameVO();

                // 데이터 추출
//            	String teamlogoimg1 = gamesche.select(".team1 img").attr("src");   //홈팀 로고 이미지
//            	String teamlogoimg2 = gamesche.select(".team2 img").attr("src");   //원정팀 로고 이미지
                String gameDt = gamesche.select(".matchDate a").text();            //경기일
                String stadiumId = gamesche.select(".matchLocation a").text();     //경기장
                String matchTeam = gamesche.select(".matchTeam a").text();         //홈틴 VS 원정팀
                String gameOpenDt = gamesche.select(".matchBtn ").text();          //판매예정일
                
				// 'vs'를 기준으로 팀명 분리
				String[] teams = matchTeam.split("vs");
				String gameHt = teams.length > 0 ? teams[0].trim() : "";
				String gameAt = teams.length > 1 ? teams[1].trim() : "";
				
                // SportsVO 객체에 데이터 설정
//				gameVO.setTeamlogoimg1(teamlogoimg1);
//				gameVO.setTeamlogoimg2(teamlogoimg2);
                gameVO.setGameDt(gameDt);
                gameVO.setStadiumId(stadiumId);
                gameVO.setGameHt(gameHt);
                gameVO.setGameAt(gameAt);
                gameVO.setGameOpenDt(gameOpenDt);

                // 데이터베이스에 저장
//                sportsMapper.insertGame(gameVO);

                // 콘솔에 출력
//                System.out.println("team1 img : " + teamlogoimg1);
//                System.out.println("team2 img : " + teamlogoimg2);
                System.out.println("경기일 : " + gameDt);
                System.out.println("경기장 : " + stadiumId);
                System.out.println("matchTeam : " + gameHt + " " + gameAt);
                System.out.println("matchBtn : " + gameOpenDt);
                System.out.println("-----------------------------------------------------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("크롤링 실패");
        }
    }
	
	//경기장 등록조건
//		private String stadium(String stadium) {
//			if (stadium.contains("잠실")) {
//				return "sta01";
//			} else if (stadium.contains("수원")) {
//				return "sta02";
//			} else if (stadium.contains("인천")) {
//				return "sta03";
//			} else if (stadium.contains("kIA")) {
//				return "sta04";
//			} else if (stadium.contains("대구")) {
//				return "sta05";
//			} else if (stadium.contains("한화")) {
//				return "sta06";
//			} else {
//				return "sta08";
//			}
//		}
}



/*

package com.op.booktique.controller.sports;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.op.booktique.mapper.sports.SportsMapper;
import com.op.booktique.vo.sports.GameVO;

@Component	// 스프링 빈으로 등록
public class SportsCrawler {

    @Autowired
    private SportsMapper sportsMapper;

    // 10분 마다 크롤링 작업 실행  0초 0/3분 *시 *일 *월 ?요일
    @Scheduled(cron = "0 0/3 * * * ?")
    public void crawlAndSaveData() {
    	
    	
    	/*
    	package com.op.booktique.controller.sports;

    	import org.jsoup.Jsoup;
    	import org.jsoup.nodes.Document;
    	import org.jsoup.nodes.Element;
    	import org.jsoup.select.Elements;

    	public class SportsCrawler {
    		
    		public static void main(String[] args) {
    			try {
    				// 경로
    				String url = "https://ticket.interpark.com/Contents/Sports";
    				Document doc = Jsoup.connect(url).get();

    				// 'li' 태그 선택
    				Elements matchItems = doc.select("ul > li");

    				// 추출
    				for (Element item : matchItems) {
    					// 팀 이미지
    					String team1Img = item.select(".team1 img").attr("src");
    					String team2Img = item.select(".team2 img").attr("src");

    					// 경기 날짜
    					String matchDate = item.select(".matchDate a").text();

    					// 경기 장소
    					String matchLocation = item.select(".matchLocation a").text();

    					// 경기 팀명
    					String matchTeam = item.select(".matchTeam a").text();

    					// 예매하기 또는 판매예정(오픈일)
    					String matchBtn = item.select(".matchBtn ").text();

    					// 출력
    					System.out.println("team1 img : " + team1Img);
    					System.out.println("team2 img : " + team2Img);
    					System.out.println("matchDate : " + matchDate);
    					System.out.println("matchLocation : " + matchLocation);
    					System.out.println("matchTeam : " + matchTeam);
    					System.out.println("matchBtn : " + matchBtn);
    					System.out.println("-----------------------------------------------------------------");
    				}
    			} catch (Exception e) {
    				e.printStackTrace();
    			}
    		}
    	}
*/




/*

package com.op.booktique.controller.sports;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.op.booktique.mapper.sports.SportsMapper;
import com.op.booktique.vo.sports.GameVO;

@Component	// 스프링 빈으로 등록
public class SportsCrawler {

    @Autowired
    private SportsMapper sportsMapper;

    	// 10분 마다 크롤링 작업 실행  0초 0/3분 *시 *일 *월 ?요일
        @Scheduled(cron = "0 0/3 * * * ?")
        public void crawlAndSaveData() {
    	
    	
    	        try {
    				String url = "https://ticket.interpark.com/Contents/Sports";
    				Document doc = Jsoup.connect(url).get();
    				Elements gameschedule = doc.select("ul > li");

    	            for (Element gamesche : gameschedule) {
    	            	GameVO gameVO = new GameVO();

    	                // 데이터 추출
//    	            	String teamlogoimg1 = gamesche.select(".team1 img").attr("src");   //홈팀 로고 이미지
//    	            	String teamlogoimg2 = gamesche.select(".team2 img").attr("src");   //원정팀 로고 이미지
    	                String gameDt = gamesche.select(".matchDate a").text();            //경기일
    	                String stadiumId = gamesche.select(".matchLocation a").text();     //경기장
    	                String matchTeam = gamesche.select(".matchTeam a").text();         //홈틴 VS 원정팀
    	                String gameOpenDt = gamesche.select(".matchBtn ").text();          //판매예정일
    	                
    					// 'vs'를 기준으로 팀명 분리
    					String[] teams = matchTeam.split("vs");
    					String gameHt = teams.length > 0 ? teams[0].trim() : "";
    					String gameAt = teams.length > 1 ? teams[1].trim() : "";
    					
    	                // SportsVO 객체에 데이터 설정
//    					gameVO.setTeamlogoimg1(teamlogoimg1);
//    					gameVO.setTeamlogoimg2(teamlogoimg2);
    	                gameVO.setGameDt(gameDt);
    	                gameVO.setStadiumId(stadiumId);
    	                gameVO.setGameHt(gameHt);
    	                gameVO.setGameAt(gameAt);
    	                gameVO.setGameOpenDt(gameOpenDt);

    	                // 데이터베이스에 저장
    	                sportsMapper.insertGame(gameVO);

    	                // 콘솔에 출력
//    	                System.out.println("team1 img : " + teamlogoimg1);
//    	                System.out.println("team2 img : " + teamlogoimg2);
    	                System.out.println("경기일 : " + gameDt);
    	                System.out.println("경기장 : " + stadiumId);
    	                System.out.println("matchTeam : " + gameHt + " vs " + gameAt);
    	                System.out.println("matchBtn : " + gameOpenDt);
    	                System.out.println("-----------------------------------------------------------------");
    	            }
    	        } catch (Exception e) {
    	            e.printStackTrace();
    	            System.out.println("크롤링 실패");
    	        }
    	    }

    
//    -------------------------------------------------------------------------------------------------------------------------------
    

			// 10분 마다 크롤링 작업 실행  0초 0/2분 *시 *일 *월 ?요일
			@Scheduled(cron = "0 0/2 * * * ?")
			public void crawlAndS() {
    	
    	
        try {
        	// 크롤링할 URL
            String url = "https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07001&TeamCode=PB003";
            Document doc = Jsoup.connect(url).get();
            
            // 경기 정보를 담고 있는 'timeSchedule' 클래스를 가진 'div' 태그 선택
            Elements gameScheduleElements = doc.select("div.timeSchedule");

            for (Element gameElement : gameScheduleElements) {
                GameVO gameVO = new GameVO();

                // 경기 날짜와 시간 추출
                String gameDt = gameElement.select("div.scheduleDate").text().replaceAll("[^0-9]", "");  // 날짜 추출
                String gameStartTm = gameElement.select("div.scheduleTime").text().replaceAll("[^0-9]", "");  // 시간 추출
                
                // 경기 날짜와 시간 결합
                String gameCloseDt = gameDt + " " + gameStartTm;

                // 경기 팀명 추출
                String gameHt = gameElement.select("div.team1 a").text();
                String gameAt = gameElement.select("div.team2 a").text();

                // 경기장 추출
                String stadiumId = gameElement.select("div.ground span").text();

                // 예매 상태 추출
                String gameOpenDt = gameElement.select("div.btns a").text();

                // SportsVO 객체에 데이터 설정
                gameVO.setGameDt(gameCloseDt);
                gameVO.setStadiumId(stadiumId);
                gameVO.setGameHt(gameHt);
                gameVO.setGameAt(gameAt);
                gameVO.setGameOpenDt(gameOpenDt);

                // 데이터베이스에 저장
                sportsMapper.insertMatch(gameVO);

                // 콘솔에 출력
                System.out.println("경기일시 : " + gameCloseDt);
                System.out.println("경기장 : " + stadiumId);
                System.out.println("팀 : " + gameHt + " vs " + gameAt);
                System.out.println("예매 상태 : " + gameOpenDt);
                System.out.println("-----------------------------------------------------------------");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("크롤링 실패");
        }
    }
}


*/