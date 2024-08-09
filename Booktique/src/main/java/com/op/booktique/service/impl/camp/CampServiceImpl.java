package com.op.booktique.service.impl.camp;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.camp.CampMapper;
import com.op.booktique.service.camp.CampService;
import com.op.booktique.vo.camp.CampVO;

@Service
public class CampServiceImpl implements CampService {
	
	private CampMapper campMapper;

	@Override
	public void crawCampData(String url) {
		try {
			// Jsoup 사용해서 크롤링해오기!
			Document doc = Jsoup.connect(url).get();
			
			Elements campElements = doc.select("div.sear_result_con.con > div.camp");
			
			for(Element element : campElements) {
				CampVO campVO = new CampVO();
				
				//필요한 데이터를 크롤링해서 campVO 객체에 설정하기!
				String campName = element.select("div.txt_box > p.tit").text(); // 캠핑장 이름
				String campAddr = element.select("div.addr").text(); // 캠핑장 주소
				Element imgElement = element.select("div.swiper-slide img").first();
				String campMainImg = (imgElement != null) ? imgElement.attr("src") : "No image"; // 이미지 src
				
				campVO.setCampname(campName);
				campVO.setCampaddr(campAddr);
				campVO.setCampmainimg(campMainImg);
				
				
				System.out.println("Camp Name: " + campName);
				System.out.println("Camp Address: " + campAddr);
				System.out.println("Camp Main Image: " + campMainImg);
				System.out.println("-------------");
				
//				campMapper.insertCamp(campVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
