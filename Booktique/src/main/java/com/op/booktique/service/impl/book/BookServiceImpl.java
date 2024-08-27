package com.op.booktique.service.impl.book;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.op.booktique.mapper.book.BookMapper;
import com.op.booktique.service.book.BookService;
import com.op.booktique.vo.book.BookVO;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;
    
    /**
     * 전체 도서 수를 반환
     *
     * @return int 전체 도서 수
     */
    @Override
    public int countBooks() {
        return bookMapper.countBooks();
    }

    /**
     * 도서 목록을 페이징하여 반환
     * 
     * @param map 페이징 정보 및 기타 조건을 포함하는 맵
     * @return List<BookVO> 페이징 처리된 도서 목록
     */
    @Override
    public List<BookVO> getBooks(Map<String, Object> map) {
        List<BookVO> books = bookMapper.getBooks(map);

        // 날짜 형식을 지정
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        
        for (BookVO book : books) {
            // 할인 가격 계산
            int discountPrice = book.getBookPrice() * (100 - book.getDiscountRate()) / 100;
            book.setDiscountPrice(discountPrice);

            // 도서 출판일을 포맷팅
            if (book.getBookDate() != null) {
                String formattedDate = dateFormat.format(book.getBookDate());
                book.setBookDateFormatted(formattedDate);
            }

            // 예상 배송 날짜 설정
            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.DATE, 1);
            int month = cal.get(Calendar.MONTH) + 1;
            int day = cal.get(Calendar.DAY_OF_MONTH);
            String[] weekDays = {"일", "월", "화", "수", "목", "금", "토"};
            String dayOfWeek = weekDays[cal.get(Calendar.DAY_OF_WEEK) - 1];

            String deliveryDate = String.format("%02d/%02d(%s)", month, day, dayOfWeek);
            book.setDeliveryDate(deliveryDate);
        }

        return books;
    }
}
