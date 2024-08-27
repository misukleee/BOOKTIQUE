package com.op.booktique.service.book;

import java.util.List;

import com.op.booktique.vo.book.BookVO;

public interface BookService {
    void clearData();
    void crawlingData(int startPage, int endPage, String sortType, String searchType);
    
    // 전체 도서 수를 가져옴
    int countBooks();

    // 페이징을 적용한 도서 목록을 가져옴
    List<BookVO> getBooks(String sortType, int offset, int limit);
}
