<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>

<link rel="stylesheet" href="/resources/css/book/style_ink.css" />

<script type="text/javascript">
$(document).ready(function() {
	// 페이지 로드 시 초기 데이터를 로드 (1페이지)
    loadBookList(1);

    /**
     * 책 리스트를 AJAX로 불러오는 함수.
     * 
     * @param {number} page - 로드할 페이지 번호
     */
     function loadBookList(page) {
         $.ajax({
             url: '/book/getList',  // 도서 목록 API 호출
             type: 'GET',
             data: { 
                 currentPage: page, 
                 pageSize: 10 // 페이지당 10개의 항목으로 고정
             },
             success: function(response) {
                 // 성공적으로 데이터를 받아온 경우
                 updateBookList(response.content); // 리스트 업데이트
                 updatePagination(response.pagingArea, page, response.totalPages); // 페이징 UI 업데이트
             },
             error: function(xhr, status, error) {
                 // 에러가 발생한 경우
                 console.error('리스트 데이터를 가져오는 데 실패했습니다.');
                 console.error('상태 코드:', xhr.status);
                 console.error('에러 메시지:', xhr.responseText);
             }
         });
     }


    /**
     * 받아온 데이터로 책 리스트를 업데이트하는 함수.
     * 
     * @param {Array} books - 도서 정보 배열
     */
    function updateBookList(books) {
	    const bookList = $('#homeTabAll .prod_list');
	    bookList.empty(); // 기존 리스트 제거
		
	    // 각 도서 정보를 HTML 리스트 아이템으로 변환하여 추가
	    $.each(books, function(index, book) {
	        const listItem = `
	            <li class="prod_item" data-binding="true" data-id="\${book.bookId}">
	                <div class="form_chk no_label">
	                    <input id="chk\${book.bookId}" type="checkbox">
	                    <label for="chk\${book.bookId}"><span class="hidden">상품선택</span></label>
	                </div>
	                <div class="prod_area horizontal">
	                    <div class="prod_thumb_box size_lg">
	                        <a class="prod_link" href="/detail/\${book.bookId}">
	                            <span class="img_box">
	                                <img data-kbbfn="s3-image" loading="lazy" alt="\${book.bookTitle}" src="\${book.bookImg}">
	                            </span>
	                        </a>
	                        <div class="prod_viewer_control">
	                            <a href="/detail/\${book.bookId}" target="_blank" class="btn_prod_viewer">
	                                <span class="ico_blank"></span>
	                                <span class="text">새창보기</span>
	                            </a>
	                        </div>
	                    </div>
	                    <div class="prod_info_box">
	                        <div class="auto_overflow_wrap prod_name_group">
	                            <div class="auto_overflow_contents">
	                                <div class="auto_overflow_inner">
	                                    <a href="/detail/\${book.bookId}" class="prod_info">
	                                        <span class="prod_name">\${book.bookTitle}</span>
	                                    </a>
	                                </div>
	                            </div>
	                        </div>
	                        <span class="prod_author">
	                            <a href="/search?keyword=\${book.author}">\${book.author}</a> · \${book.publisher}
	                            <span class="date"> · \${book.bookDateFormatted}</span>
	                        </span>
	                        <div class="prod_price">
	                            <span class="percent">\${book.discountRate}%</span>
	                            <span class="price">
	                                <span class="val">\${new Intl.NumberFormat().format(book.discountPrice)}</span>
	                                <span class="unit">원</span>
	                            </span>
	                            <span class="price_normal">
	                                <span class="text">정가</span>
	                                <s class="val">\${new Intl.NumberFormat().format(book.bookPrice)}원</s>
	                            </span>
	                        </div>
	                        <p class="prod_introduction">\${book.bookExplan}</p>
	                        <div class="prod_bottom">
	                            <div class="review_summary_wrap type_sm">
	                                <span class="review_klover_box">
	                                    <span class="review_klover_text font_size_xxs">0.0</span>
	                                </span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <div class="prod_order_state">
	                    <span class="badge_sm badge_pill"><span class="text"></span></span>
	                    <p class="order_state_desc">
	                        <strong class="blue">\${book.deliveryDate} 도착</strong>
	                    </p>
	                </div>
	                <div class="prod_btn_wrap">
	                    <div class="btn_wrap full">
	                        <a class="btn_light_gray btn_sm" data-kbbfn="cart-item" data-kbbfn-spbcode="002" data-kbbfn-dvsncode="KOR" data-kbbfn-grpcode="SGK" data-kbbfn-pid="\${book.bookId}" data-kbbfn-bid="\${book.isbn}">
	                            <span class="text">장바구니</span>
	                        </a>
	                        <a class="btn_primary btn_sm" data-kbbfn="cart-item" data-kbbfn-spbcode="001" data-kbbfn-dvsncode="KOR" data-kbbfn-grpcode="SGK" data-kbbfn-pid="\${book.bookId}" data-kbbfn-bid="\${book.isbn}">
	                            <span class="text">바로구매</span>
	                        </a>
	                    </div>
	                </div>
	            </li>`;
	        bookList.append(listItem); // 새로운 리스트 아이템 추가
	    });
	}

   /**
    * 페이징 UI를 업데이트하는 함수.
    * 
    * @param {string} pagingAreaHtml - 페이징 UI HTML
    * @param {number} currentPage - 현재 페이지 번호
    * @param {number} totalPages - 전체 페이지 수
    */
	function updatePagination(pagingAreaHtml, currentPage, totalPages) {
	    $('#allTopPagi').html(pagingAreaHtml); // 상단 페이징 영역 업데이트
	    $('#allBottomPagi').html(pagingAreaHtml); // 하단 페이징 영역 업데이트
	
	    // 이전 버튼 클릭 이벤트 처리
	    $('#allTopPagi .btn_page.prev, #allBottomPagi .btn_page.prev').off('click').on('click', function() {
            if (currentPage > 1) {
                loadBookList(currentPage - 1);
            }
        });
	
	    // 다음 버튼 클릭 이벤트 처리
	    $('#allTopPagi .btn_page.next, #allBottomPagi .btn_page.next').off('click').on('click', function() {
            if (currentPage < totalPages) {
                loadBookList(currentPage + 1);
            }
        });
	
	    // 페이징 숫자 클릭 이벤트 처리
	    $('#allTopPagi .page_num a, #allBottomPagi .page_num a').off('click').on('click', function(event) {
            event.preventDefault();
            const urlParams = new URLSearchParams($(this).attr('href').split('?')[1]);
            const page = parseInt(urlParams.get('currentPage'));
            loadBookList(page);
        });
	}
});
</script>

<div class="wrapper">
	<div class="container_wrapper">
	
		<section class="breadcrumb_wrap">
		    <div class="breadcrumb_inner">
		        <ol class="breadcrumb_list">
		            <li class="breadcrumb_item">
		                <a href="https://www.kyobobook.co.kr/" class="home_link">HOME</a>
		            </li>
		            <li class="breadcrumb_item">
		                <a href="https://product.kyobobook.co.kr/KOR" class="btn_sub_depth">국내도서</a>
		                <div class="sub_depth_grid">
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item active">
		                                <a href="https://product.kyobobook.co.kr/KOR" class="depth_link">국내도서</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/ENG" class="depth_link">서양도서</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/JAP" class="depth_link">일본도서</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/KYO" class="depth_link">교보Only</a>
		                            </li>
		                        </ul>
		                    </div>
		                </div>
		            </li>
		            <li class="breadcrumb_item" id="bread_step_1">
		                <a href="https://product.kyobobook.co.kr/category/KOR/01" class="btn_sub_depth">소설</a>
		                <div class="sub_depth_grid col3">
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item active">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/01" class="depth_link">소설</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/03" class="depth_link">시/에세이</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/05" class="depth_link">인문</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/19" class="depth_link">역사/문화</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/21" class="depth_link">종교</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/35" class="depth_link">잡지</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/38" class="depth_link">청소년</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                </div>
		            </li>
		            <li class="breadcrumb_item" id="bread_step_2">
		                <a href="https://product.kyobobook.co.kr/category/KOR/0101" class="btn_sub_depth">한국소설</a>
		                <div class="sub_depth_grid col2">
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item active">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/0101" class="depth_link">한국소설</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/0103" class="depth_link">영미소설</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/0121" class="depth_link">고전소설/문학선</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/0124" class="depth_link">세계문학전집</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                </div>
		            </li>
		            <li class="breadcrumb_item" id="bread_step_3">
		                <a href="/category/KOR/0101" class="btn_sub_depth">전체</a>
		                <div class="sub_depth_grid col2">
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/010101" class="depth_link">한국소설일반</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/010102" class="depth_link">고전소설/문학선</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                    <div class="sub_depth_box">
		                        <ul class="sub_depth_list">
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/010115" class="depth_link">청소년소설</a>
		                            </li>
		                            <li class="depth_item">
		                                <a href="https://product.kyobobook.co.kr/category/KOR/010123" class="depth_link">웹소설</a>
		                            </li>
		                            <!-- Other items omitted for brevity -->
		                        </ul>
		                    </div>
		                </div>
		            </li>
		        </ol>
		    </div>
		</section>
		
		<section id="contents" class="contents_wrap aside">
			<h1 class="hidden">국내도서</h1>
			<div class="contents_inner">
				<aside class="aside_wrap sub_category">
				    <div class="aside_header">
				        <div class="title_wrap title_size_xxl">
				            <a href="https://product.kyobobook.co.kr/KOR" class="title_heading">국내도서</a>
				        </div>
				    </div>
				    <div class="aside_body">
				        <div class="snb_wrap">
				            <a href="https://product.kyobobook.co.kr/category/KOR/01" class="snb_title">한국소설</a>
				            <ul class="snb_list">
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010101" class="snb_link">한국소설일반</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010102" class="snb_link">고전소설/문학선</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010103" class="snb_link">공포/호러소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010104" class="snb_link">미스터리/스릴러소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010105" class="snb_link">역사/대하소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010106" class="snb_link">라이트노벨</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010107" class="snb_link">SF/과학소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010108" class="snb_link">판타지소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010111" class="snb_link">로맨스소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010113" class="snb_link">무협소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010115" class="snb_link">청소년소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010123" class="snb_link">웹소설</a>
				                </li>
				                <li class="snb_item">
				                    <a href="https://product.kyobobook.co.kr/category/KOR/010125" class="snb_link">드라마/영화소설</a>
				                </li>
				            </ul>
				        </div>
				    </div>
				</aside>
				
				<div class="tab_wrap type_line ui-tabs ui-corner-all ui-widget ui-widget-content">
		        	<div class="tab_list_wrap">
					    <ul class="tabs ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header" role="tablist">
					        <li class="tab_item homeTabAll ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="homeTabAll" aria-labelledby="ui-id-41" aria-selected="true" aria-expanded="true">
					            <a href="#homeTabAll" class="tab_link ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-41">
					                <span class="tab_text">전체보기</span>
					            </a>
					        </li>
					        <li class="tab_item homeTabBest ui-tabs-tab ui-corner-top ui-state-default ui-tab" role="tab" tabindex="-1" aria-controls="homeTabBest" aria-labelledby="ui-id-42" aria-selected="false" aria-expanded="false">
					            <a href="#homeTabBest" class="tab_link ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-42">
					                <span class="tab_text">베스트셀러</span>
					            </a>
					        </li>
					        <li class="tab_item homeTabNew ui-tabs-tab ui-corner-top ui-state-default ui-tab" role="tab" tabindex="-1" aria-controls="homeTabNew" aria-labelledby="ui-id-43" aria-selected="false" aria-expanded="false">
					            <a href="#homeTabNew" class="tab_link ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-43">
					                <span class="tab_text">신상품</span>
					            </a>
					        </li>
					    </ul>
					</div>
					
					<div id="homeTabAll" class="tab_content" data-type="all">
						<div class="list_sort_wrap">
						    <div class="right_area">
						        <div class="form_sel type_sm" data-class="type_sm">
						            <select title="목록 보기 유형 선택" id="allSort" style="display: none;">
						                <option value="new">최신순</option>
						                <option value="sel">판매량순</option>
						                <option value="mxv">높은가격순</option>
						                <option value="minv">낮은가격순</option>
						            </select>
						            <span tabindex="0" id="allSort-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-haspopup="true" title="목록 보기 유형 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-52" aria-labelledby="ui-id-52" aria-disabled="false">
						                <span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span>
						                <span class="ui-selectmenu-text">최신순</span>
						            </span>
						        </div>
						
						        <div class="form_sel type_sm" data-class="type_sm">
						            <select title="목록 보기 유형 선택" id="allPer" style="display: none;">
						                <option value="20">20개씩 보기</option>
						                <option value="50">50개씩 보기</option>
						            </select>
						            <span tabindex="0" id="allPer-button" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-haspopup="true" title="목록 보기 유형 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" aria-activedescendant="ui-id-56" aria-labelledby="ui-id-56" aria-disabled="false">
						                <span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span>
						                <span class="ui-selectmenu-text">10개씩 보기</span>
						            </span>
						        </div>
						
						        <div class="switch_list_btn_wrap" data-target="#homeTabAll .switch_prod_wrap">
						            <button type="button" class="btn_sm btn_line_gray ico_list active" data-type="list">
						                <span class="hidden">리스트형 으로 보기</span>
						            </button>
						            <button type="button" class="btn_sm btn_line_gray ico_img" data-type="img">
						                <span class="hidden">이미지형 으로 보기</span>
						            </button>
						        </div>
						    </div>
						</div>
					
						<div class="list_result_wrap">
						    <div class="pagination" id="allTopPagi">
		                        ${articlePage.pagingArea}
		                    </div>
						    
						    <div class="right_area">
						        <div class="item_group">
						            <button type="button" class="btn_sm btn_line_gray" data-kbbfn="cart-item"
						                    data-kbbfn-cartList="#homeTabAll .prod_list"
						                    data-kbbfn-cartAllCheck="#homeTabAll #chkAllBestChk">
						                <span class="ico_cart"></span>
						                <span class="text">장바구니</span>
						            </button>
						        </div>
						        <div class="item_group">
						            <button type="button" class="btn_sm btn_line_gray excel_down" onclick="pushDataLayerForDownExcel()">
						                <span class="ico_excel"></span>
						                <span class="text">Excel 다운로드</span>
						            </button>
						        </div>
						    </div>
						</div>
						
						<div class="switch_prod_wrap view_type_list">
		    				<ol class="prod_list">
		    					<!-- 책 리스트가 동적으로 이곳에 추가됨 -->
		    				</ol>
		    				
		        			<div class="pagination" id="allBottomPagi">
		                        ${articlePage.pagingArea}
		                    </div>
						</div>
								
					</div>
		        </div>
			</div>
		</section>
	
	
	
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
    setBreadCrumb();
});

function setBreadCrumb() {
    $('.breadcrumb_item', '.breadcrumb_wrap').not('.no_sub').each(function(){
        $(this).on({
            'mouseenter focusin': function(event){
                var tg = $(this);
                tg.siblings('.breadcrumb_item').removeClass('active');
                tg.addClass('active');

                setTimeout(function() {
                    tg.addClass('animated');
                }, 30);
            },
            'mouseleave focusout': function(event){
                var item, that;
                that = this;
                item = $(that).closest('.breadcrumb_item');
                setTimeout(function () {
                    if ($(item).find('a:focus').length < 1 && $(item).find('button:focus').length < 1) {
                        $(that).removeClass('active animated');
                    }
                }, 50);
            },
        });
    });
}
</script>