package com.op.booktique.controller.book;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.op.booktique.service.book.BookService;
import com.op.booktique.util.ArticlePage;
import com.op.booktique.vo.book.BookVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/book")
@Controller
public class BookController {
    
    @Autowired
    private BookService bookService;

    // 도서 메인
    @GetMapping("/main")
    public String bookList(
        @RequestParam(defaultValue = "1") int page, 
        @RequestParam(defaultValue = "5") int pageSize,
        @RequestParam(defaultValue = "new") String sortType, 
        Model model) {

        // 전체 도서 수를 가져옴
        int totalBooks = bookService.countBooks();
        log.info("Total number of books: {}", totalBooks);

        // 페이지에 따른 오프셋 계산
        int offset = (page - 1) * pageSize;

        // 도서 목록을 가져옴 (페이징과 정렬 적용)
        List<BookVO> books = bookService.getBooks(sortType, offset, pageSize);
        log.info("Number of books retrieved: {}", books.size());
        
        // 할인된 가격 및 배송 날짜 계산
        for (BookVO book : books) {
        	// 가격 할인 계산
            int discountPrice = book.getBookPrice() * (100 - book.getDiscountRate()) / 100;
            book.setDiscountPrice(discountPrice);

            // 내일 날짜 계산
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.DATE, 1); // 내일 날짜로 설정
            int month = cal.get(Calendar.MONTH) + 1;
            int day = cal.get(Calendar.DAY_OF_MONTH);
            String[] weekDays = {"일", "월", "화", "수", "목", "금", "토"};
            String dayOfWeek = weekDays[cal.get(Calendar.DAY_OF_WEEK) - 1];

            // 배송 날짜를 "MM/DD(요일)" 형식으로 설정
            String deliveryDate = String.format("%02d/%02d(%s)", month, day, dayOfWeek);
            book.setDeliveryDate(deliveryDate);
        }

        // ArticlePage 객체 생성
        ArticlePage<BookVO> articlePage = new ArticlePage<>(totalBooks, page, pageSize, books);

        // 모델에 데이터를 추가
        model.addAttribute("books", books);
        model.addAttribute("articlePage", articlePage);
        model.addAttribute("sortType", sortType);

        // "book/main" 뷰를 반환
        return "book/main";
    }

    // 크롤링
    @GetMapping("/insert")
    public String insertBook() {
        // 데이터 초기화 (카테고리 및 도서 테이블)
        bookService.clearData();

        // 크롤링 시작과 끝 페이지 설정, 검색 조건 및 정렬 기준 설정
        int startPage = 1;
        int endPage = 10;
        String sortType = "new";  // 예: 최신순
        String searchType = "all"; // 예: 전체 검색

        bookService.crawlingData(startPage, endPage, sortType, searchType);
        
        return "book/insert";
    }
}
