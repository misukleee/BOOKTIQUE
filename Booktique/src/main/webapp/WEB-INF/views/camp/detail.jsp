<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" href="/resources/css/camp/f47af22c1841ec.css" />
<link rel="stylesheet" href="/resources/css/common.css" />
<link rel="stylesheet" href="/resources/css/camp/f6ece2f47af22c1841ec.css" />

<%
	String facilitiesInfo = "전기,와이파이,장작판매,온수,물놀이장,놀이터,운동시설";
	String[] facilities = facilitiesInfo.split(",");
%>

<style>
html {
	-webkit-text-size-adjust: none;
	-moz-text-size-adjust: none;
	text-size-adjust: none;
	font-size: 62.5%;
}

body {
	font-size: 1.4rem;
	font-weight: normal;
	font-family: -apple-system, system-ui, BlinkMacSystemFont, "맑은 고딕",
		"Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo",
		sans-serif;
	color: #000;
}

#container {
	position: relative;
	width: 100%;
}

#container .contents {
	width: 128rem;
	margin: 0 auto;
}

.infoLabel {
	margin-right: 1.0rem;
}
.contentDetail {
    display: flex;
    flex-wrap: wrap; /* 필요에 따라 줄 바꿈 허용 */
    gap: 10px; /* 이미지 사이 간격 설정 */
}

.imgItem {
    flex: 1 1 auto; /* 이미지의 기본 크기 설정 */
    max-width: 300px; /* 이미지의 최대 너비 설정 */
}
.contentDetailText {
	margin-top:10px;
	font-size: 16px;
	text-align: justify
}
.icon_h3 {
    position: relative;
    font-size: 20px;
    color: #000;
    padding-left: 29px;
    line-height: 27px;
    background: url(https://www.gocamping.or.kr/img/2018/sub/icon_h3.gif) no-repeat left 6px;
    margin: 40px 0 13px 0;
    letter-spacing: -0.08em;
    word-break: break-all;
}
.camp_item_g {
    width: 94%;
    height: auto;
    overflow: hidden;
    padding: 30px 3%;
}
.camp_item_g ul li {
    display: flex;
    padding: 20px 0;
    text-align: center;
    font-size: 15px;
    width: 12.5%;
    float: left;
}
.camp_item_g ul li i span {
    padding-top: 35px;
    display: inline-block;
    font-style: normal;
    line-height: 30px;
    width: 100px;
    height: 60px; 
}
i.ico_volt {
	background: url(https://www.gocamping.or.kr/img/2018/sub/ico_volt.png) no-repeat center 5px;
	width: 100%;
}
i.ico_wifi {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_wifi.png) no-repeat center 5px;
    width: 100%;
}
i.ico_wood {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_wood.png) no-repeat center 5px;
    width: 100%;
}
i.ico_hotwater {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_hotwater.png) no-repeat center 5px;
    width: 100%;
}
i.ico_pool {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_pool.png) no-repeat center 5px;
    width: 100%;
}
i.ico_playzone {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_playzone.png) no-repeat center 5px;
    width: 100%;
}
i.ico_ico_sports {
    background: url(https://www.gocamping.or.kr/img/2018/sub/ico_sports.png) no-repeat center 5px;
    width: 100%;
}

</style>

<div id="container">
	<div class="leftWingWrapper">
		<ul></ul>
	</div>
	<div class="contents" style="">
		<div class="productWrapper">
			<div class="skip">
				<a href="#productSide">상품 예매 바로가기</a><a href="#productMainBody">상품
					요약정보 건너뛰기
				</a>
			</div>
			<div class="productMain">
				<div class="productMainTop">
					<div class="summary">
						<div class="summaryTop">
							<div class="tag"></div>
							<h2 class="prdTitle">${campVO.campName}</h2>
							<p class="prdTitleSmall"></p>
							<div class="prdSection">
								<div class="tagText">
									<span>캠핑</span><span> 주간 26위</span>
								</div>
								<div class="prdTitleBottom">
									<a href="#">
										<div class="prdStar ">
											<div class="prdStarBack">
												<div class="prdStarIcon" data-star="4.5"></div>
											</div>
											<div class="prdStarScore">
												<span class="blind">평점: </span>8.7
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="summaryBody">
							<div class="posterBox">
								<div class="posterBoxTop ">
									<img class="posterBoxImage"
										src="${campVO.campMainImg}"
										alt="${campVO.campName}">
								</div>
								<div class="posterBoxBottom">
									<div class="prdCast">
										<div class="prdCastWrap">
											<a class="prdCastBtn" data-toggle="self" data-toast="prdCast"
												aria-checked="false" aria-label="티켓캐스트 등록" role="checkbox"
												href="#" data-popup-hover="prdCast">티켓캐스트</a>
											<div id="popup-hover-prdCast"
												class="popup popTooltip popPrdCast">
												<div class="popupWrap">
													<div class="popupHead">
														<strong class="popupTitle">티켓캐스트란?</strong>
													</div>
													<div class="popupBody">
														<p>
															관심공연, 관심인물을 등록하시면 모바일 알림과 이메일로<br>티켓오픈일을 알려드리는 맞춤형
															티켓정보입니다.
														</p>
													</div>
												</div>
											</div>
										</div>
										<p class="prdCastNum">2482</p>
									</div>
									<div class="share">
										<ul class="shareList">
											<li class="shareItem is-facebook"><a class="link"
												href="#" data-sns="facebook">페이스북 공유</a></li>
											<li class="shareItem is-twitter"><a class="link"
												href="#" data-sns="twitter">트위터 공유</a></li>
										</ul>
									</div>
								</div>
							</div>
							<ul class="info">
								<li class="infoItem"><strong class="infoLabel">주소</strong>
								<div class="infoDesc">
										<a class="infoBtn" data-popup="info-place" role="button"
											href="#">${campVO.campAddr}<i>(자세히)</i></a>
									</div></li>
								<li class="infoItem"><strong class="infoLabel">캠핑장유형</strong>
								<div class="infoDesc">
										<p class="infoText">${campVO.campCategory}</p>
									</div></li>
								<li class="infoItem"><strong class="infoLabel">운영기간</strong>
								<div class="infoDesc">
										<p class="infoText">${campVO.period}</p>
									</div></li>
<!-- 								<li class="infoItem infoPrice"><strong class="infoLabel">시설현황</strong> -->
<!-- 								<div class="infoDesc"> -->
<!-- 									<div class="infoDesc"> -->
<%-- 										<p class="infoText">${campVO.campOption}</p> --%>
<!-- 									</div> -->
<!-- 								</div></li> -->
								<li class="infoItem infoPrice"><strong class="infoLabel">홈페이지</strong>
								<div class="infoDesc">
									<div class="infoDesc">
										<p class="infoText"><a href="${campVO.campUrl}" target='_blank'>홈페이지 바로가기</a></p>
									</div>
								</div></li>
								<li class="infoItem"><strong class="infoLabel">문의처</strong>
								<div class="infoDesc">
										<p class="infoText">${campVO.campPhone}</p>
									</div></li>
								<li class="infoItem infoBenefit"><strong class="infoLabel">혜택</strong>
								<div class="infoDesc">
										<div class="infoBenefitGuide">
											<a class="infoBtn" data-popup="info-cardTable" role="button"
												href="#">무이자할부<i>(자세히)</i></a>
											<div id="popup-info-cardTable"
												class="popup popTooltip popCardTable">
												<div class="popupWrap">
													<div class="popupHead">
														<strong class="popupTitle">무이자할부 안내</strong><small
															class="popupTitleSmall">체크,법인,기업,즉시불,기프트카드 제외<br>무이자할부
															결제 시, 카드 포인트 및 마일리지 적립제외
														</small>
													</div>
													<div class="popupBody">
														<table class="cardTable">
															<caption>카드별 무이자할부</caption>
															<colgroup>
																<col class="col1">
																<col class="col2">
															</colgroup>
															<tbody>
																<tr>
																	<td class="category">농협카드</td>
																	<td><span class="plan">2~6개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">현대카드</td>
																	<td><span class="plan">2~3개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">롯데카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">국민카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">신한카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">삼성카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
																<tr>
																	<td class="category">비씨카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시 (하나 BC, Non-bc카드 제외)</span></td>
																</tr>
																<tr>
																	<td class="category">우리카드</td>
																	<td><span class="plan">2~5개월</span><span>5만원
																			이상 결제 시</span></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<div class="infoBenefitList">
											<a class="infoLink"
												href="https://nol.interpark.com/promotion/nol-promotion?mchtNo=INTERPARK_TICKET&amp;mchtDtlNo=08&amp;eventCode=NOIII"
												target="_blank"><span class="logo-nolpoint">놀포인트
											</span>NOL 카드 쓸 때마다 10% 적립</a><a
												href="https://ticket.interpark.com/Contents/Toping"
												class="infoLink " target="_blank"><span
												class="logo-toping">토핑 </span>가입하고 중복할인 쿠폰받기</a>
										</div>
										<div class="infoBenefitList"></div>
									</div></li>// 쿠폰 다운로드 리스트 : 기획 확인 필요 // promotion api 프로모션은 장르별 노출, 테스트 시
								참고
							</ul>
						</div>
					</div>
				</div>
				<div id="productMainBody" class="productMainBody">
					<nav class="nav">
						<h3 class="blind">네비게이션</h3>
						<ul class="navList">
							<li class="navItem  is-active"><a class="navLink" href="#"
								data-target="INFO">이용정보</a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="ADDITIONAL">판매정보</a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="REVIEW">이용후기<span class="countNum">416</span></a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="EXPECT">기대평<span class="countNum">0</span></a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="QNA">Q&amp;A<span class="countNum">95</span></a></li>
						</ul>
					</nav>
					<div>
						<div class="prdContents detail">
							<div class="content">
								<h3 class="contentTitle">캠핑장 소개</h3>
								<div class="contentDetail">
									<c:forEach var="image" items="${fn:split(campVO.campDetailImg, ',')}">
										<li class="imgItem"><img src="${image}" alt="캠핑장 이미지" ></li>
									</c:forEach>
									<p class="contentDetailText">${campVO.campIntro}</p>
								</div>
								<div class="contentDetail">
									<h3 class="icon_h3">캠핑장 시설정보</h3>
								</div>
								<div class="camp_item_g">
									<ul>
										<c:forEach var="facility" items="${campVO.facilitiesInfo}">
										<li>
											<c:choose>
												<c:when test="${facility == '전기'}">
													<i class="ico_volt"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '와이파이'}">
													<i class="ico_wifi"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '장작판매'}">
													<i class="ico_wood"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '온수'}">
													<i class="ico_hotwater"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '물놀이장'}">
													<i class="ico_pool"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '놀이터'}">
													<i class="ico_playzone"><span>${facility}</span></i>
												</c:when>
												<c:when test="${facility == '운동시설'}">
													<i class="ico_sports"><span>${facility}</span></i>
												</c:when>
												<c:otherwise>
													<i class="ico_default"><span>${facility}</span></i>
												</c:otherwise>
											</c:choose>
										</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="content">
								<h3 class="contentTitle">공지사항</h3>
								<div class="contentDetail">
									<strong><span style="font-family: 돋움"><span
											style="font-size: larger">○ 현장 근무자도 누군가의 소중한 가족입니다.
												존중과 배려 부탁드립니다.<br>
											<br>○ 캠핑장 이용인원은 성인 4명(영유아포함 6명)이므로 예약시 참고 <br>
											<br>○ 예약은 최대 2박3일까지 가능하며 1인당 최대 1개면만 예약 가능<br>
											<br>○ 캠핑장 입장시 예약자 본인 체크인시 이용가능 <br>
										</span></span></strong><span style="font-family: 돋움"><span
										style="font-size: larger">(예약자 본인 확인을 위해 신분증 등을 지참)<br>
										<strong><br>○ 텐트 등 물품대여를 하지 않으므로 본인 텐트 준비</strong><br>(캠핑장
											사이트(면) 6×8m을 감안하여 텐트 설치)<br>
										<strong><br>○ 시설 및 이용안내 문의처 및 이용시간</strong><br>
										<img
											src="//ticketimage.interpark.com/220026522024/04/30/5c9728c7.jpg"
											style="width: 100%;" alt=""><br>
										<br>
										<strong>○ 캠핑장 이용시 주요사항 <br></strong>- 캠핑장 이용시간은 당일
											14:00~다음날 12:00이며 입장은 당일 22:00까지입니다(점심시간 12:00~13:00).<br>-
											캠핑장 사이트 양도 매매시 불익이 있으니 유의하시기 바랍니다(적발시 경범죄 처벌법 제3조에 의거 처벌).<br>-
											2박 이상 예매하신 고객분들 중 부분 취소를 희망하시는 고객께서는 고객센터(☏1544-1555)로 문의하여
											주시기 바랍니다. <br>- 노을공원내 차량 출입이 불가(공원내 차량출입 전면금지)하므로
											노을공원주차장에 주차 후, 맹꽁이 전기차량(유료)을 이용하시거나 도보로 캠핑장까지 이용하셔야 합니다(도보
											1,400m) <br>- 노을공원주차장은 협소하여 주말, 휴일 등 성수기 12:00~17:00 주차장
											진입이 어려우니 일찍 오셔서(11시 이전) 공원산책 또는 캠핑장 입장시간(14시)에 맞추어 입장을
											부탁드립니다. <br>(인근 평화의공원 또는 난지천공원 주차장은 17시 이후 이용 안내)<br>※노을캠핑장
											주차는 1대/면까지만 1일 할인주차권 허용&nbsp;<br>
										<br></span></span><span style="font-family: 돋움; font-size: 14.4px;">-
										단체 이용은 02-300-5576 으로 문의주시기 바랍니다.</span>
								</div>
							</div>
<!-- 							<div class="content description"> -->
<!-- 								<h3 class="contentTitle false">상세정보</h3> -->
<!-- 								<div class="contentDetail"> -->
<!-- 									<meta http-equiv="Content-Type" -->
<!-- 										content="text/html; charset=euc-kr"> -->
<!-- 									<title>Untitled Document</title> -->
<!-- 									<img -->
<!-- 										src="//ticketimage.interpark.com/Play/image/etc/22/22002652-04.jpg"> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="content prdStat">
								<h3 class="contentTitle">예매자 통계</h3>
								<div class="statWrap">
									<div class="statGender">
										<strong class="statTitle">성별</strong>
										<div class="statGenderType is-male">
											<div class="statGenderName">남자</div>
											<div class="statGenderValue">
												54.6<em class="unit">%</em>
											</div>
										</div>
										<div class="statGenderType is-female">
											<div class="statGenderName">여자</div>
											<div class="statGenderValue">
												45.4<em class="unit">%</em>
											</div>
										</div>
									</div>
									<div class="statAge">
										<strong class="statTitle">연령</strong>
										<div class="statAgeBar">
											<div class="statAgeType">
												<div class="statAgePercent">0.3%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="0.3"
														style="height: 4px;"></span>
												</div>
												<div class="statAgeName">10대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">9.9%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="9.9"
														style="height: 8px;"></span>
												</div>
												<div class="statAgeName">20대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">36.1%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="36.1"
														style="height: 32px;"></span>
												</div>
												<div class="statAgeName">30대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">39.6%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="39.6"
														style="height: 32px;"></span>
												</div>
												<div class="statAgeName">40대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">12.2%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="12.2"
														style="height: 12px;"></span>
												</div>
												<div class="statAgeName">50대</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="productSide" class="productSide prdSideSticky">
				<div class="stickyWrap">
					<h3 class="blind">상품 예매하기</h3>
					<div class="sideMain">
						<div class="sideContainer containerTop sideToggleWrap">
							<div class="sideHeader">
								<a class="sideToggleBtn" data-toggle="sideToggleWrap"
									role="button"><h4 class="sideTitle">이용일</h4>
									<div class="selectedData">
										<span class="blind">선택된 일자:</span><span class="date">2024.08.28
											(수)</span>
									</div></a>
							</div>
							<div class="sideContent toggleCalendar">
								<div class="sideCalendar">
									<div class="datepicker">
										<div class="datepicker-container datepicker-inline">
											<div class="datepicker-panel" data-view="days picker">
												<ul>
													<li data-view="month prev" class="disabled">‹</li>
													<li data-view="month current">2024. 08</li>
													<li data-view="month next" class="">›</li>
												</ul>
												<ul data-view="week">
													<li>일</li>
													<li>월</li>
													<li>화</li>
													<li>수</li>
													<li>목</li>
													<li>금</li>
													<li>토</li>
												</ul>
												<ul data-view="days">
													<li class="muted">0</li>
													<li class="muted">0</li>
													<li class="muted">0</li>
													<li class="muted">0</li>
													<li class="disabled">1</li>
													<li class="disabled">2</li>
													<li class="disabled">3</li>
													<li class="disabled">4</li>
													<li class="disabled">5</li>
													<li class="disabled">6</li>
													<li class="disabled">7</li>
													<li class="disabled">8</li>
													<li class="disabled">9</li>
													<li class="disabled">10</li>
													<li class="disabled">11</li>
													<li class="disabled">12</li>
													<li class="disabled">13</li>
													<li class="disabled">14</li>
													<li class="disabled">15</li>
													<li class="disabled">16</li>
													<li class="disabled">17</li>
													<li class="disabled">18</li>
													<li class="disabled">19</li>
													<li class="disabled">20</li>
													<li class="disabled">21</li>
													<li class="disabled">22</li>
													<li class="disabled">23</li>
													<li class="disabled">24</li>
													<li class="disabled">25</li>
													<li class="disabled">26</li>
													<li class="disabled">27</li>
													<li class="picked">28</li>
													<li class="">29</li>
													<li class="">30</li>
													<li class="">31</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="sideContainer containerMiddle sideToggleWrap ">
							<div class="sideHeader">
								<a class="sideToggleBtn" data-toggle="sideToggleWrap"
									role="button"><h4 class="sideTitle">기간</h4>
									<div class="selectedData">
										<span class="blind">선택된 기간:</span><span class="time">1박2일</span>
									</div></a>
							</div>
							<div class="sideContent">
								<div class="sideTimeTable toggleTimeTable">
									<ul class="timeTableList is-long">
										<li class="timeTableItem"><a
											class="timeTableLabel is-toggled"
											data-tabtoggle="timeTableList" role="button" data-seq="551"
											data-text="1박2일"><span>1박2일</span></a></li>
										<li class="timeTableItem"><a class="timeTableLabel"
											data-tabtoggle="timeTableList" role="button"
											data-seq="551,552" data-text="2박3일"><span>2박3일</span></a></li>
									</ul>
								</div>
								<h4 class="sideTitle blind">잔여석</h4>
								<div class="sideSeatTable">
									<ul class="seatTableList">
										<li class="seatTableItem"><strong class="seatTableName">A구역</strong><span
											class="seatTableStatus">45</span></li>
										<li class="seatTableItem"><strong class="seatTableName">B구역</strong><span
											class="seatTableStatus">19</span></li>
										<li class="seatTableItem"><strong class="seatTableName">C구역</strong><span
											class="seatTableStatus">22</span></li>
										<li class="seatTableItem"><strong class="seatTableName">D구역</strong><span
											class="seatTableStatus">29</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="sideBtnWrap">
						<a class="sideBtn is-primary" href="#" data-check="false"><span>예매하기</span></a><a
							href="https://nol.interpark.com/promotion/nol-promotion?mchtNo=INTERPARK_TICKET&amp;mchtDtlNo=08&amp;eventCode=NOIII"
							class="sideBtnLink is-nolpoint" target="_blank">NOL 카드 쓸 때마다
							10% 적립</a>
					</div>
				</div>
			</div>
		</div>
		<div id="popup-prdGuide" class="popup popCenter popPrdGuide"
			data-popup-type="important">
			<div class="popupWrap">
				<div class="popupHead">
					<strong class="popupTitle">예매 안내</strong>
				</div>
				<div class="popupBody">
					<div class="prdGuide" style="white-space: pre-line;">
						<div style="text-align: center">
							<div style="">
								<div style="">&nbsp;</div>
							</div>
							<div style="text-align: center;">
								<span style="text-align: start; color: rgb(255, 0, 0);"><strong
									style="font-size: medium;">※ 캠핑장 이용시 주의사항
										안내&nbsp;&nbsp;※<br>
								</strong><span style="font-size: medium;"><strong>★ 만취,
											소음, 화재 등의 행위로 주변이용자에게 피해 유발시 퇴장조치 될 수 있습니다.<br>
										<br>★상대방에 대한 존중 및 캠핑에티켓을 준수하여 건전한 캠핑환경 조성에 동참하여 주시기 바랍니다.<br>&nbsp;
											&nbsp; 감사합니다.<br>
										<br type="_moz">
									</strong></span></span><span style="text-align: start; font-size: medium;"><strong><img
										src="//ticketimage.interpark.com/220026522024/07/24/c4c3aaef.gif"
										style="width: 100%;" alt=""><br></strong></span>
							</div>
							<span style="font-size: medium;"><b>&nbsp;&lt; 캠핑장 운영
									알림&gt;</b></span>
						</div>
						<div>
							<span style="font-size: medium;">&nbsp;<br>
							<strong style="font-size: medium;">○2024 예약일정</strong><br>
							<img
								src="//ticketimage.interpark.com/220026522024/03/11/8903fd64.png"
								style="width: 100%;" alt=""><br>
							<strong><br type="_moz"></strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>○캠핑장
									이용시간: 당일 14:00~다음날 12:00이며 입장은 당일 22:00까지</strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>&nbsp;
									(관리사무소 점심시간 12:00~13:00)</strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>&nbsp;</strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>○예약은 실
									이용자 이름으로 예약 (입장 시 예약자(이용자) 신분증 지참) 및 방문<br>&nbsp;&nbsp;※예약자
									본인이 와야 입장 가능<br>
								<br>
								<strong>○노을 주차장 이용 시 한 사이트 당 1대에 대해서만 할인적용이 가능<br>&nbsp;
										※ 주차장에서 선불결제 필요
								</strong><br>
								<br>○화재 예방을 위해 텐트 내 개별난로 (휘발유, 화목 등) 반입 금지<br>&nbsp;
									※반입가능 전열기구 : 600와트 이하, 가스용량 13킬로 이하<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									관광진흥법 시행 규칙 별표7. 야영장의 안전/위생기준<br>&nbsp;
							</strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>○노을공원 내
									차량 출입이 불가(공원 내 차량출입 전면금지)</strong></span>
						</div>
						<div>
							<span style="font-size: medium;"><strong>&nbsp;-
									맹꽁이 전기차량(유료)을 이용 또는 도보로 캠핑장까지 이용(약1.4㎞)<br>
							</strong></span><span style="color: rgb(255, 0, 0);"><span
								style="font-size: medium;"><strong><br></strong></span><strong
								style="font-size: medium;">&nbsp;</strong></span><strong><span
								style="font-size: medium"><br></span></strong>
						</div>
					</div>
				</div>
				<div class="popupFooter">
					<div class="popupCheck">
						<a class="popupCheckLabel" data-toggle="self" aria-checked="false"
							role="checkbox" href="#">하루동안 보지 않기</a>
					</div>
					<button class="popupCloseBtn is-bottomBtn">
						<span class="blind">닫기</span>
					</button>
				</div>
			</div>
		</div>
		<div id="popup-info-place" class="popup popCenter popInfoPlace">
			<div class="popupWrap">
				<div class="popupHead">
					<strong class="popupTitle">공연장 정보</strong>
					<button class="popupCloseBtn">
						<span class="blind">닫기</span>
					</button>
				</div>
				<div class="popupBody">
					<div class="popPlaceWrap">
						<div class="popPlaceTitle">
							<a
								href="http://ticket.interpark.com/TPPlace/Main/TPPlace_Detail.asp?PlaceCode=20000297"
								class="placeName">월드컵공원 노을캠핑장</a>
						</div>
						<div class="popPlaceInfo">
							<p>
								주소 : <span>서울특별시 마포구 상암동 481-6 한국지역난방공사</span>
							</p>
						</div>
						<div class="placeMap"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="popup-info-price" class="popup popCenter popInfoPrice">
			<div class="popupWrap">
				<div class="popupHead">
					<strong class="popupTitle">전체가격 보기</strong>
					<button class="popupCloseBtn">
						<span class="blind">닫기</span>
					</button>
				</div>
				<div class="popupBody">
					<div class="popPriceWrap">
						<p class="popPriceGuide">특정 기간, 특정 공연일에만 판매되는 가격이 있습니다. 예매 시
							참고하시기 바랍니다.</p>
						<div class="popPriceContent">
							<table class="popPriceTable">
								<caption>전체 가격표</caption>
								<colgroup>
									<col class="col1">
									<col class="col2">
									<col class="col3">
								</colgroup>
								<tbody>
									<tr class="">
										<td class="category" rowspan="1"><span
											class="categoryContents">A구역</span></td>
										<td class="name"><strong>한사이트당</strong></td>
										<td><strong>13,000원</strong></td>
									</tr>
									<tr class="divider">
										<td class="category" rowspan="1"><span
											class="categoryContents">B구역</span></td>
										<td class="name"><strong>한사이트당</strong></td>
										<td><strong>13,000원</strong></td>
									</tr>
									<tr class="divider">
										<td class="category" rowspan="1"><span
											class="categoryContents">C구역</span></td>
										<td class="name"><strong>한사이트당</strong></td>
										<td><strong>10,000원</strong></td>
									</tr>
									<tr class="divider">
										<td class="category" rowspan="1"><span
											class="categoryContents">D구역</span></td>
										<td class="name"><strong>한사이트당</strong></td>
										<td><strong>13,000원</strong></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="popup-info-lottery-win"
			class="popup popCenter popLotteryResult info-lottery-win">
			<div class="popupWrap">
				<button class="popupCloseBtn">
					<span class="blind">닫기</span>
				</button>
				<div class="popupHead">
					<p class="popupTitle is-accent">
						아쉽지만 <br> 당첨되지 않았습니다.
					</p>
					<p class="lineDesc">
						신청해주셔서 감사합니다.<br>다음에 진행되는 로터리 티켓에 도전해주세요.
					</p>
				</div>
				<br>
			</div>
		</div>
		<div class="toast is-on ">
			<span class="toastMessage"></span>
		</div>
		<div id="popup-gallery" class="popup popCenter popGallery ">
			<div class="popupWrap">
				<div class="popupHead">
					<strong class="popupTitle">관련 이미지/영상</strong>
					<button class="popupCloseBtn">
						<span class="blind">닫기</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="topButtonWrapper active ">
		<a href="#" class="topButton"><span class="blind">맨 위로</span></a>
	</div>
</div>



<script>
document.addEventListener('DOMContentLoaded', function() {
    // 팝업 열기
    document.querySelectorAll('.infoBtn').forEach(button => {
        button.addEventListener('click', function(event) {
            event.preventDefault(); // 기본 동작 방지 (링크 클릭 방지)
            const popupId = this.getAttribute('data-popup');
            const popup = document.getElementById('popup-' + popupId);
            if (popup) {
                popup.classList.add('is-visible');
                console.log('Popup opened:', popupId);
            }
        });
    });

    // 팝업 닫기
    document.querySelectorAll('.popupCloseBtn').forEach(button => {
        button.addEventListener('click', function() {
            this.closest('.popup').classList.remove('is-visible');
            console.log('Popup closed');
        });
    });

    // 팝업 외부 클릭 시 닫기
    document.addEventListener('click', function(event) {
        const target = event.target;
        // 외부 클릭 시 팝업 닫기
        if (target.classList.contains('popup') || target.closest('.popup') === null) {
            document.querySelectorAll('.popup.is-visible').forEach(popup => {
                popup.classList.remove('is-visible');
            });
            console.log('Popup closed by clicking outside');
        }
    });

    // 팝업 내부 클릭 이벤트 전파 방지
    document.querySelectorAll('.popupWrap').forEach(wrapper => {
        wrapper.addEventListener('click', function(event) {
            event.stopPropagation(); // 팝업 내부 클릭은 전파되지 않음
        });
    });
});

</script>