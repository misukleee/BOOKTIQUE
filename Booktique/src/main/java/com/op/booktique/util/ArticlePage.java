package com.op.booktique.util;

import java.util.List;

public class ArticlePage<T> {
    private int total;			// 전체글 수
    private int currentPage;	// 현재 페이지 번호
    private int totalPages;		// 전체 페이지수
    private int startPage;		// 블록의 시작 페이지 번호
    private int endPage;		// 블록의 종료 페이지 번호
    private String keyword = "";	// 검색어
    private String url = "";		// 요청URL
    private List<T> content;		// select 결과 데이터
    private String pagingArea = "";	//페이징 처리

    public ArticlePage(int total, int currentPage, int size, List<T> content) {
    	// size : 한 화면에 보여질 목록의 행 수
        this.total = total;
        this.currentPage = currentPage;
        this.content = content;
        
        // 전체글 수가 0이면?
        if (total == 0) {
        	totalPages = 0; // 전체 페이지 수
			startPage = 0; // 블록 시작번호
			endPage = 0; // 블록 종료번호
        } else {	// 글이 있다면
        	// 전체글 수 / 한 화면에 보여질 목록의 행 수 => 전체 페이지 수
            totalPages = total / size;
            
            // 전체글 수 % 한 화면에 보여질 목록의 행 수
			// => 0이아니면. 나머지가 있다면, 페이지 1증가
            if (total % size > 0) {
                totalPages++;
            }
            
            // 페이지 블록  시작페이지를 구하는 공식!
			// 시작페이지 = 현재페이지 / 페이지크기 * 페이지크기 + 1
            startPage = currentPage / 5 * 5 + 1;
            if (currentPage % 5 == 0) {
            	// 페이지크기를 빼줌
                startPage -= 5;
            }

            // 종료페이지번호 = 시작페이지번호 + (페이지크기-1)
            endPage = startPage + 4;
            
            // 종료페이지번호 > 전체페이지수보다 클 때
            if (endPage > totalPages) {
                endPage = totalPages;
            }
        }

        // 이전 버튼
        pagingArea += "<button class='btn_page prev'";
        if (this.currentPage == 1) {
            pagingArea += " disabled='disabled'";
        }
        pagingArea += "><span class='hidden'>이전</span></button>";

        // 페이지 번호
        pagingArea += "<div class='page_num'>";
        for (int pNo = this.startPage; pNo <= this.endPage; pNo++) {
            pagingArea += "<a href='?page=" + pNo + "&pageSize=" + size + "&sortType=" + this.keyword + "' class='btn_page_num";
            if (this.currentPage == pNo) {
                pagingArea += " active";
            }
            pagingArea += "'>" + pNo + "</a>";
        }
        pagingArea += "</div>";

        // 다음 버튼
        pagingArea += "<button class='btn_page next'";
        if (this.currentPage == this.totalPages) {
            pagingArea += " disabled='disabled'";
        }
        pagingArea += "><span class='hidden'>다음</span></button>";


    }

    // getter and setter methods

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
        this.currentPage = currentPage;
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
