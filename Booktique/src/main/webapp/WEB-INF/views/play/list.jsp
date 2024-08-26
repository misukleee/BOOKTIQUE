<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<style>
/* 전체 페이지를 중앙 정렬 */
body {
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  margin: 0;
}

.ProductList_contents__eUxgq {
  margin-top: 20px;
  display: grid;
  grid-template-columns: repeat(5, 210px);
  gap: 25px; /* 간격을 20px로 조정 */
  justify-content: center;
}

/* 각 상품 항목 스타일 */
.TicketItem_ticketItem__ {
  width: 210px; 
  height: 410px; 
  box-sizing: border-box;
  overflow: hidden;
}

/* 이미지 스타일 */
.TicketItem_imageWrap__iVEOw img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* 내용물 스타일 */
.TicketItem_contentsWrap__xCe3A {
  padding: 5px; 
}
</style>





<div class="ProductList_contents__eUxgq" aria-label="상품 리스트">

  <c:forEach var="playList" items="${playList}" varStatus="stat">
    <a role="link" tabindex="0" class="TicketItem_ticketItem__" gtm-label="런투패밀리">
      <div class="TicketItem_imageWrap__iVEOw">
        <img src="${playList.mainImg}" data-nimg="fill" class="TicketItem_image__U6xq6" sizes="(max-width: 1023px) 104px, 25vw" 
        	 style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
      </div>
      <ul class="TicketItem_contentsWrap__xCe3A">
        <li class="TicketItem_goodsName__Ju76j">${playList.showName}</li>
        <li class="TicketItem_placeName__ls_9C">${playList.detailImg}</li>
        <li class="TicketItem_playDate__5ePr2">${playList.startDate}~ ${playList.endDate}</li>
      </ul>
    </a>
  </c:forEach>

</div>

