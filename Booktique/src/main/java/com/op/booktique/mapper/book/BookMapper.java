package com.op.booktique.mapper.book;

import java.util.List;

import com.op.booktique.vo.book.BookVO;
import com.op.booktique.vo.book.CategoryVO;

public interface BookMapper {
    
    // 모든 책 데이터를 삭제하는 메서드
    void deleteAllBooks();

    // 모든 카테고리 데이터를 삭제하는 메서드
    void deleteAllCategories();

    // 새로운 책 데이터를 삽입하는 메서드
    void insertBook(BookVO bookVO);

    // 새로운 카테고리 데이터를 삽입하는 메서드
    void insertCategory(CategoryVO categoryVO);

    // 카테고리 코드를 데이터베이스에서 가져오는 메서드
    List<String> getCategoryCodes();

    // 모든 책 리스트를 가져오는 메서드 (페이징 없음)
    List<BookVO> getBooks();

    // 전체 책의 수를 가져오는 메서드 (페이징을 위한 총 아이템 수 계산)
    int countBooks();
}