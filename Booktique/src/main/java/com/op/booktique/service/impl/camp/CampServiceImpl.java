package com.op.booktique.service.impl.camp;

import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.camp.CampMapper;
import com.op.booktique.service.camp.CampService;
import com.op.booktique.vo.camp.CampVO;

@Service
public class CampServiceImpl implements CampService {
	
	@Autowired
	private CampMapper campMapper;

	@Override
	public void crawlingData(int startPage, int endPage) {
		
		try {
			//이미지 경로
			String baseUrl = "https://www.gocamping.or.kr";
			
			for (int pageIndex = startPage; pageIndex <= endPage; pageIndex++) {
				String url = String.format("https://www.gocamping.or.kr/bsite/camp/info/list.do?pageUnit=10&searchKrwd=&listOrdrTrget=c_rdcnt&pageIndex=%d", pageIndex);
//				System.out.println("URL: " + url);
			
				// Jsoup 사용해서 크롤링해오기!
				Document doc = Jsoup.connect(url).get();
				
				Elements campElements = doc.select("div.camp_search_list > ul > li");
				
				for(Element element : campElements) {
					CampVO campVO = new CampVO();
					
					//campVO 객체에 데이터 넣기!
					String campName = element.select("h2.camp_tt > a").text(); // 캠핑장 이름
					String campAddr = element.select("ul.camp_info01 > li.addr").text(); // 캠핑장 주소
					String campPhone = element.select("ul.camp_info01 > li.call_num").text(); // 캠핑장 전화번호
					String campEtc = element.select("span.camp_stt").text(); // 기타정보
					String campMainImg = element.select("div.img_box img").attr("src"); // 캠핑장 이미지
					
					// 이미지 경로가 상대경로일 경우, 절대경로로 변환
					if (campMainImg != null && !campMainImg.isEmpty() && !campMainImg.startsWith("http")) {
						campMainImg = baseUrl + campMainImg;
					}
					
					//[]뒤의 글씨만 크롤링해오기!
					String selectCampName = campNameText(campName);
					
					campVO.setCampName(selectCampName);
					campVO.setCampAddr(campAddr);
					campVO.setCampPhone(campPhone);
					campVO.setCampEtc(campEtc);
					campVO.setCampMainImg(campMainImg);
					String areaCode = areaCodeChk(campAddr);
					campVO.setAreaCode(areaCode);
					
					System.out.println("Camp Name: " + selectCampName);
					System.out.println("Camp Addr: " + campAddr);
					System.out.println("Camp Phone: " + campPhone);
					System.out.println("Camp Etc: " + campEtc);
					System.out.println("Camp MainImg: " + campMainImg);
					System.out.println("Camp areaCode: " + areaCode);
//					System.out.println("-----------------------------------");
					
					//상세페이지 URL추출
					String detailPageUrl = element.select("h2.camp_tt > a").attr("href");
					// 상세페이지로 접근하기 위한 전체 URL 생성
					String fullDetailPageUrl = baseUrl + detailPageUrl;
					// 상세페이지 접근 및 데이터 크롤링 (다음 단계에서 설명)
					crawlingDetailPage(fullDetailPageUrl, campVO);
					
					
					campMapper.insertCamp(campVO);
				}
			}	
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("에러메시지");
		}
	}
	

	// 상세페이지 크롤링해오기!
	private void crawlingDetailPage(String fullDetailPageUrl, CampVO campVO) {
		try {
			Document detailDoc = Jsoup.connect(fullDetailPageUrl).get();
			
			// 홈페이지 URL 크롤링
			String campUrl = detailDoc.select("th:contains(홈페이지) + td > a").attr("href");
			campVO.setCampUrl(campUrl);
			
			// 캠핑장 유형 크롤링
			String campCategory = detailDoc.select("th:contains(캠핑장 유형) + td").text();
			campVO.setCampCategory(campCategory);
			
			// 운영기간 크롤링
			String period = detailDoc.select("th:contains(운영기간) + td").text();
			campVO.setPeriod(period);
			
			//캠핑장 소개글 크롤링
			String campIntro = detailDoc.select("p.camp_intro_txt > span").text();
			campVO.setCampIntro(campIntro);
			
			// 이미지 URL 크롤링
			Elements imgElements = detailDoc.select("li.col_03.img_box img");
			StringBuilder imgUrls = new StringBuilder();
			String baseUrl = "https://www.gocamping.or.kr";
			
			for (Element imgElement : imgElements) {
			String imgUrl = imgElement.attr("src");
			
			// 이미지 경로가 상대 경로일 경우 절대 경로로 변환
			if (imgUrl != null && !imgUrl.isEmpty() && !imgUrl.startsWith("http")) {
				imgUrl = baseUrl + imgUrl;
			}
			
			if (imgUrls.length() > 0) {
				imgUrls.append(",");
			}
				imgUrls.append(imgUrl);
			}
				
			// CampVO에 이미지 URL 설정
			campVO.setCampDetailImg(imgUrls.toString());
			System.out.println("캠핑상세이미지: " + campVO.getCampDetailImg());
			
			// 주요시설 크롤링
			Elements facilityElements = detailDoc.select("#table_type03 th:contains(주요시설) + td ul.table_ul05 li");
			StringBuilder campOption = new StringBuilder();
			for (Element facility : facilityElements) {
				campOption.append(facility.text()).append(", ");
			}
			// 마지막 쉼표와 공백 제거
			if (campOption.length() > 0) {
				campOption.setLength(campOption.length() - 2);
			}
			campVO.setCampOption(campOption.toString());
			
			//캠핑장시설정보 가져오기
			Elements facilitiesInfo = detailDoc.select("div.camp_item_g ul li span");
			StringBuilder additionalInfo = new StringBuilder();
			for (Element infoElement : facilitiesInfo) {
			if (additionalInfo.length() > 0) {
				additionalInfo.append(", ");
			}
			additionalInfo.append(infoElement.text());
			}
			campVO.setFacilitiesInfo(additionalInfo.toString());
			
			
			System.out.println("홈페이지주소: " + campUrl);
			System.out.println("캠핑장유형: " + campCategory);
			System.out.println("운영기간: " + period);
			System.out.println("캠핑장 소개: " + campIntro);
			System.out.println("캠핑장 추가 정보: " + campVO.getFacilitiesInfo());
			System.out.println("캠핑사이트정보: " + campOption.toString());
			System.out.println("-----------------------------------");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("상세페이지 크롤링 중 에러 발생: " + e.getMessage());
			}
		
	}



	//[]뒤의 글씨만 크롤링해오기!
	private String campNameText(String text) {
		String regex = "\\[.*?\\]";
		String result = text.replaceAll(regex, "").trim();
		return result;
	}
	
	//지역코드 등록조건
	private String areaCodeChk(String address) {
		if (address.contains("경기")) {
			return "ac41";
		} else if (address.contains("강원")) {
			return "ac42";
		} else if (address.contains("충청남도") || address.contains("충청북도")) {
			return "ac43";
		} else if (address.contains("전라남도") || address.contains("전라북도")) {
			return "ac45";
		} else if (address.contains("경상남도") || address.contains("경상북도")) {
			return "ac50";
		} else {
			return "ac51";
		}
	}

	//캠핑장 목록
	@Override
	public List<CampVO> campList(CampVO campVO) {
		return this.campMapper.campList(campVO);
	}

	@Override
	public List<CampVO> getCampByAreaCode(String areaCode) {
		return this.campMapper.getCampByAreaCode(areaCode);
	}

	//캠핑 상세페이지
	@Override
	public CampVO detail(String campNo) {
		return this.campMapper.detail(campNo);
	}
}
