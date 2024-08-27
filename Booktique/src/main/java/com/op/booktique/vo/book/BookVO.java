package com.op.booktique.vo.book;

import java.util.Date;
import lombok.Data;

@Data
public class BookVO {
    private String bookId;       // 도서번호
    private int categoryId;      // 카테고리번호
    private String bookTitle;    // 도서명
    private String isbn;         // ISBN
    private int bookPrice;       // 정가
    private int discountRate;    // 할인율
    private int discountPrice;   // 할인된 가격
    private String author;       // 저자
    private String publisher;    // 출판사
    private String bookSize;     // 책 사이즈
    private int bookPage;        // 쪽수
    private Date bookDate;       // 출간일
    private String bookExplan;   // 상세설명
    private String bookImg;      // 메인이미지
    private String bookSub;      // 상세이미지
    private String deliveryDate; // 배송 날짜
}
