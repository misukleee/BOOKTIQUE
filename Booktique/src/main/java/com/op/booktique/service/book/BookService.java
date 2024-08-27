package com.op.booktique.service.book;

import java.util.List;
import java.util.Map;

import com.op.booktique.vo.book.BookVO;

public interface BookService {
    // 전체 책의 수를 가져오는 메서드 (페이징을 위한 총 아이템 수 계산)
    int countBooks();

    // 페이징을 위해 책 리스트를 가져오는 메서드
    List<BookVO> getBooks(Map<String, Object> map);
}
