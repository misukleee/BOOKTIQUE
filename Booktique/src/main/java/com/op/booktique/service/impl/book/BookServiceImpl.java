package com.op.booktique.service.impl.book;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.op.booktique.mapper.book.BookMapper;
import com.op.booktique.service.book.BookService;
import com.op.booktique.vo.book.BookVO;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public void clearData() {
        bookMapper.deleteAllBooks();
        bookMapper.deleteAllCategories();
    }

    @Override
    public void crawlingData(int startPage, int endPage, String sortType, String searchType) {
        try {
            // DB에서 카테고리 코드를 가져옴
            List<String> categoryCodes = bookMapper.getCategoryCodes();

            for (String categoryCode : categoryCodes) {
                // 카테고리 코드 변환 (예: KOR0101 -> /KOR/0101)
                String formattedCategoryCode = formatCategoryCode(categoryCode);
                String baseUrl = "https://product.kyobobook.co.kr/category/" + formattedCategoryCode;

                for (int pageIndex = startPage; pageIndex <= endPage; pageIndex++) {
                    String url = String.format("%s#?page=%d&type=%s&sort=%s", baseUrl, pageIndex, searchType, sortType);
                    Document doc = Jsoup.connect(url).get();

                    // 도서 및 카테고리 데이터 크롤링
                    Elements bookElements = doc.select("li.prod_item");

                    for (Element element : bookElements) {
                        BookVO bookVO = new BookVO();

                        // 도서 정보 설정
                        bookVO.setBookTitle(element.select("div.title > a").text());
                        bookVO.setAuthor(element.select("div.author > a").text());
                        bookVO.setPublisher(element.select("div.pub_info > a").text());
                        bookVO.setBookPrice(Integer.parseInt(element.select("div.price > span.sell_price").text().replaceAll("[^0-9]", "")));
                        bookVO.setIsbn(element.select("meta[itemprop=isbn]").attr("content"));
                        bookVO.setBookImg(element.select("div.prod_thumb > a > img").attr("src"));
                        bookVO.setDiscountRate(10); // 기본 할인율

                        // 카테고리 코드 설정
                        bookVO.setCategoryId(Integer.parseInt(categoryCode));

                        // 데이터베이스에 삽입
                        bookMapper.insertBook(bookVO);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 카테고리 코드를 URL 형식에 맞게 변환
    private String formatCategoryCode(String categoryCode) {
        return categoryCode.substring(0, 3) + "/" + categoryCode.substring(3);
    }
    
    @Override
    public int countBooks() {
        return bookMapper.countBooks();
    }

    @Override
    public List<BookVO> getBooks(String sortType, int currentPage, int pageSize) {
        // 페이징 처리 없이 모든 책 정보를 가져옵니다.
        return bookMapper.getBooks(); // 파라미터 없이 호출
    }

}
