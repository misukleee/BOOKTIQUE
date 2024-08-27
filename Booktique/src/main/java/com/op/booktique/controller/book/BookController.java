package com.op.booktique.controller.book;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

    /**
     * 도서 메인 - 뷰를 반환하는 메소드
     * 
     * @return String 도서 메인 화면
     */
    @GetMapping("/main")
    public String bookList() {
        return "book/main";
    }

    /**
     * 도서 목록을 가져오는 API - 비동기 데이터 처리
     * 요청 파라미터: {currentPage=1, ...}
     *
     * @param currentPage 현재 페이지 번호
     * @param map 페이지 계산을 위한 파라미터 맵
     * @return ArticlePage<BookVO> 페이지 정보를 포함한 도서 목록 객체
     */
    @ResponseBody
    @GetMapping("/getList")
    public ArticlePage<BookVO> getList(int currentPage, Map<String, Object> map) {

        int offset = (currentPage - 1) * 10;  // pageSize=10
        map.put("offset", offset);
        map.put("pageSize", 10);
        map.put("currentPage", currentPage);

        int totalBooks = bookService.countBooks();
        log.info("Total number of books: {}", totalBooks);

        List<BookVO> books = bookService.getBooks(map);
        log.info("Map contents before passing to service: {}", map);
        log.info("getList -> bookList : {}", books);

        return new ArticlePage<BookVO>(totalBooks, currentPage, 10, books, "/book/main");
    }
}
