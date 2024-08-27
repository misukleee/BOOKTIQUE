package com.op.booktique.util;

import java.util.List;

/**
 * 페이징 처리를 위한 클래스
 * 특정 페이지에 대한 콘텐츠와 페이징 정보
 *
 * @param <T> 페이지에 표시될 콘텐츠의 타입
 */
public class ArticlePage<T> {
    private int total;           // 전체 글 수
    private int currentPage;      // 현재 페이지 번호
    private int totalPages;       // 전체 페이지 수
    private int startPage;        // 페이지 블록의 시작 페이지 번호
    private int endPage;          // 페이지 블록의 종료 페이지 번호
    private String keyword = "";  // 검색어
    private String url = "";      // 요청 URL
    private List<T> content;      // 선택된 페이지의 콘텐츠 목록
    private String pagingArea = "";// 페이징 UI HTML

    
    /**
     * ArticlePage 생성자
     * 
     * @param total 전체 글 수
     * @param currentPage 현재 페이지 번호
     * @param size 페이지 당 콘텐츠 수
     * @param content 선택된 페이지의 콘텐츠 목록
     * @param url 요청 URL
     */
    public ArticlePage(int total, int currentPage, int size, List<T> content, String url) {
        this.total = total;
        this.currentPage = Math.max(1, currentPage);  // currentPage가 1보다 작으면 1로 설정
        this.content = content;
        this.url = url;

        // 페이지 수 및 블록 계산
        if (total == 0) {
            totalPages = 0;
            startPage = 0;
            endPage = 0;
        } else {
            totalPages = total / size;
            if (total % size > 0) {
                totalPages++;
            }
            startPage = (this.currentPage - 1) / 5 * 5 + 1;
            endPage = startPage + 4;
            if (endPage > totalPages) {
                endPage = totalPages;
            }
        }

        // 페이징 UI 생성
        
        // 이전 버튼
        pagingArea += "<button class='btn_page prev'";
        if (this.currentPage == 1) {
            pagingArea += " disabled='disabled'";
        } else {
        	pagingArea += " onclick='loadBookList(" + (this.currentPage - 1) + ")'";
        }
        pagingArea += "><span class='hidden'>이전</span></button>";
        
        
        // 페이지 번호들
        pagingArea += "<div class='page_num'>";
        for (int pNo = this.startPage; pNo <= this.endPage; pNo++) {
            pagingArea += "<a href='" + this.url + "?currentPage=" + pNo + "&pageSize=" + size + "' class='btn_page_num";
            if (this.currentPage == pNo) {
                pagingArea += " active";
            }
            pagingArea += "'>" + pNo + "</a>";
        }
        pagingArea += "</div>";
        
        // 페이지 번호들
        pagingArea += "<button class='btn_page next'";
        if (this.currentPage == this.totalPages) {
            pagingArea += " disabled='disabled'";
        } else {
            pagingArea += " onclick='loadBookList(" + (this.currentPage + 1) + ")'";
        }
        pagingArea += "><span class='hidden'>다음</span></button>";
    }

    // getter and setter methods

    /**
     * 페이징 UI HTML을 반환
     * 
     * @return String 페이징 UI HTML
     */
    public String getPagingArea() {
        return this.pagingArea;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = Math.max(1, currentPage);
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public int getStartPage() {
        return startPage;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<T> getContent() {
        return content;
    }

    public void setContent(List<T> content) {
        this.content = content;
    }

    public void setPagingArea(String pagingArea) {
        this.pagingArea = pagingArea;
    }
}
