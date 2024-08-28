<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<link rel="stylesheet" as="style" type="text/css"
	href="/resources/css/play/chunk.common.css">
<link rel="stylesheet" as="style" type="text/css"
	href="/resources/css/play/chunk.goods_detail.css">


<div id="container">
	<div class="leftWingWrapper">
		<ul></ul>
	</div>
	<div class="contents" style="">
		<div class="productWrapper">
			<div class="skip">
				<a href="#productSide">상품 예매 바로가기</a><a href="#productMainBody">상품
					요약정보 건너뛰기</a>
			</div>
			<div class="productMain">
				<div class="productMainTop">
					<div class="summary">
						<div class="summaryTop">
							<h2 class="prdTitle">연극 〈사운드 인사이드〉</h2>
							<p class="prdTitleSmall"></p>
							<div class="prdSection">
								<div class="tagText">
									<span>연극</span><span> 주간 4위</span>
								</div>
								<div class="prdTitleBottom">
									<a href="#"><div class="prdStar ">
											<div class="prdStarBack">
												<div class="prdStarIcon" data-star="4.5"></div>
											</div>
											<div class="prdStarScore">
												<span class="blind">평점: </span>9.3
											</div>
										</div></a>
								</div>
							</div>
						</div>
						<div class="summaryBody">
							<div class="posterBox">
								<div class="posterBoxTop ">
									<img class="posterBoxImage"
										src="//ticketimage.interpark.com/Play/image/large/24/24009913_p.gif"
										alt="연극 〈사운드 인사이드〉">
								</div>
								<div class="posterBoxBottom">
									
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
								<li class="infoItem"><strong class="infoLabel">장소</strong>
									<div class="infoDesc">
										<a class="infoBtn" data-popup="info-place" role="button"
											href="#">충무아트센터 중극장 블랙<i>(자세히)</i></a>
									</div></li>
								<li class="infoItem"><strong class="infoLabel">공연기간</strong>
									<div class="infoDesc">
										<p class="infoText">2024.08.13 ~2024.10.27</p>
									</div></li>
								<li class="infoItem"><strong class="infoLabel">공연시간</strong>
									<div class="infoDesc">
										<p class="infoText">100분</p>
									</div></li>
								<li class="infoItem"><strong class="infoLabel">관람연령</strong>
									<div class="infoDesc">
										<p class="infoText">중학생이상 관람가</p>
									</div></li>
								<li class="infoItem infoPrice"><strong class="infoLabel">가격</strong>
									<div class="infoDesc">
										<ul class="infoPriceList">
											<li class="infoPriceItem is-largePrice"><a
												class="infoBtn is-accent" data-popup="info-price"
												role="button" href="#">전체가격보기 <i>(자세히)</i></a></li>
											<li class="infoPriceItem"><span class="name">R석</span><span
												class="price ">70,000원</span></li>
											<li class="infoPriceItem"><span class="name">S석</span><span
												class="price ">60,000원</span></li>
										</ul>
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
												href="https://nol.interpark.com/promotion/nol-promotion?mchtNo=INTERPARK_TICKET&amp;mchtDtlNo=06&amp;eventCode=NOIII"
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
								data-target="INFO">공연정보</a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="CASTING">캐스팅정보</a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="ADDITIONAL">판매정보</a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="REVIEW">관람후기<span class="countNum">197</span></a></li>
							<li class="navItem "><a class="navLink" href="#"
								data-target="EXPECT">기대평<span class="countNum">181</span></a></li>
						</ul>
					</nav>
					<div>
						<div class="prdContents detail">
							<div class="content casting">
								<h3 class="contentTitle">캐스팅</h3>
								<a href="#" class="castingInfoBtn">캐스팅 일정조회</a>
								<div class="contentDetail">
									<ul class="contentDetailList">
										<div>연극 &lt;사운드 인사이드&gt; 캐스팅 변경 안내</div>
										<div>&nbsp;</div>
										<div>배우 개인 사정으로 '벨라’ 역 캐스팅이 아래와 같이 변경 되었습니다.</div>
										<div>&nbsp;</div>
										<div>9월 4일(수) 3시 공연</div>
										<div>'벨라' 역 서재희 → 문소리</div>
										<div>&nbsp;</div>
										<div>캐스팅 변경으로 관람에 불편을 드려 죄송합니다.</div>
										<div>관객 여러분의 많은 양해 부탁 드립니다.</div>
									</ul>
								</div>
								<div class="expandalbeWrap ">
									<ul class="castingList">
										<li class="castingItem"><div class="castingTop">
												<a class="castingLink"
													href="http://www.playdb.co.kr/artistdb/detail.asp?ManNo=2762"
													target="_blank" rel="noopener"><div
														class="castingProfile">
														<img
															src="//ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040004/07/01/0400040701_2762_01.846.gif"
															class="castingImage" alt="프로필 사진">
													</div></a><a class="castingHeartBtn " data-toggle="self"
													data-toast="cast" aria-checked="false"
													aria-label="티켓캐스트 등록/취소" role="checkbox" href="#"></a>
											</div>
											<div class="castingInfo">
												<div class="castingActor">벨라</div>
												<div class="castingName">문소리</div>
											</div></li>
										<li class="castingItem"><div class="castingTop">
												<a class="castingLink"
													href="http://www.playdb.co.kr/artistdb/detail.asp?ManNo=1862"
													target="_blank" rel="noopener"><div
														class="castingProfile">
														<img
															src="//ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040004/07/01/0400040701_1862_01.328.jpg"
															class="castingImage" alt="프로필 사진">
													</div></a><a class="castingHeartBtn " data-toggle="self"
													data-toast="cast" aria-checked="false"
													aria-label="티켓캐스트 등록/취소" role="checkbox" href="#"></a>
											</div>
											<div class="castingInfo">
												<div class="castingActor">벨라</div>
												<div class="castingName">서재희</div>
											</div></li>
										<li class="castingItem"><div class="castingTop">
												<a class="castingLink"
													href="http://www.playdb.co.kr/artistdb/detail.asp?ManNo=24015"
													target="_blank" rel="noopener"><div
														class="castingProfile">
														<img
															src="//ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040004/10/12/0400041012_24015_02.346.gif"
															class="castingImage" alt="프로필 사진">
													</div></a><a class="castingHeartBtn " data-toggle="self"
													data-toast="cast" aria-checked="false"
													aria-label="티켓캐스트 등록/취소" role="checkbox" href="#"></a>
											</div>
											<div class="castingInfo">
												<div class="castingActor">크리스토퍼</div>
												<div class="castingName">이현우</div>
											</div></li>
										<li class="castingItem"><div class="castingTop">
												<a class="castingLink"
													href="http://www.playdb.co.kr/artistdb/detail.asp?ManNo=40209"
													target="_blank" rel="noopener"><div
														class="castingProfile">
														<img
															src="//ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040004/16/09/0400041609_40209_02924.gif"
															class="castingImage" alt="프로필 사진">
													</div></a><a class="castingHeartBtn " data-toggle="self"
													data-toast="cast" aria-checked="false"
													aria-label="티켓캐스트 등록/취소" role="checkbox" href="#"></a>
											</div>
											<div class="castingInfo">
												<div class="castingActor">크리스토퍼</div>
												<div class="castingName">강승호</div>
											</div></li>
										<li class="castingItem"><div class="castingTop">
												<a class="castingLink"
													href="http://www.playdb.co.kr/artistdb/detail.asp?ManNo=44220"
													target="_blank" rel="noopener"><div
														class="castingProfile">
														<img
															src="//ticketimage.interpark.com/PlayDictionary/DATA/PlayDic/PlayDicUpload/040004/19/01/0400041901_44220_02119.gif"
															class="castingImage" alt="프로필 사진">
													</div></a><a class="castingHeartBtn " data-toggle="self"
													data-toast="cast" aria-checked="false"
													aria-label="티켓캐스트 등록/취소" role="checkbox" href="#"></a>
											</div>
											<div class="castingInfo">
												<div class="castingActor">크리스토퍼</div>
												<div class="castingName">이석준</div>
											</div></li>
									</ul>
								</div>
							</div>
							<div class="content">
								<h3 class="contentTitle">공연시간 정보</h3>
								<div class="contentDetail">
									<p class="contentDetailText">예매가능시간: 관람 3시간 전까지</p>
									<ul class="contentDetailList">
										<div>
											화,목,금 19시 30분 / 수 15시, 19시 30분 / 토, 공휴일 14시, 18시 / 일 15시 (월
											쉼)<br>*9/17(화) 공연없음 (추석 당일)<br>*9/20(금) 15:00 공연있음
										</div>
									</ul>
								</div>
							</div>
							<div class="content">
								<h3 class="contentTitle">공지사항</h3>
								<div class="contentDetail">
									<img
										src="https://ticketimage.interpark.com/Play/ITM/Data/Modify/2024/8/2024081313501702.jpg"
										alt="" style="width: 100%;"> <br> <img
										src="https://ticketimage.interpark.com/Play/ITM/Data/Modify/2024/7/2024071215222719.jpg"
										alt="" style="width: 100%;">
								</div>
							</div>
							<div class="content">
								<h3 class="contentTitle">할인정보</h3>
								<div class="contentDetail">
									<a
										href="http://ticket.interpark.com/Tiki/Mail/TPMail.asp?Where=insi&amp;GPage=http://ticket.interpark.com/tiki/main/TPMail_Coupon.asp?Coupon=6E5NN856"
										target="_blank"><img
										src="https://ticketimage.interpark.com/Play/ITM/Data/Modify/2024/8/2024082615523426.jpg"
										alt="" style="width: 100%;"></a><br> <br> <img
										src="https://ticketimage.interpark.com/Play/ITM/Data/Modify/2024/8/2024082714021527.jpg"
										alt="" style="width: 100%;">
								</div>
							</div>
							<div class="content description">
								<h3 class="contentTitle false">공연상세 / 캐스팅일정</h3>
								<div class="contentDetail">
									<meta http-equiv="Content-Type"
										content="text/html; charset=euc-kr">
									<title>Untitled Document</title>
									<p>
										<strong><img
											src="//ticketimage.interpark.com/Play/image/etc/24/24009913-13.jpg"
											alt="" border="0"></strong>
									</p>
									<p>
										<strong><img
											src="//ticketimage.interpark.com/Play/image/etc/24/24009913-15.jpg"
											alt="" border="0"></strong>
									</p>
									<p>
										<strong><a
											href="https://tickets.interpark.com/contents/bridge/24010459"
											target="_blank"><img
												src="//ticketimage.interpark.com/Play/image/etc/24/24009913-06.jpg"
												alt="" border="0"></a></strong>
									</p>
									<p>
										<strong><a
											href="https://tickets.interpark.com/contents/bridge/24010466"
											target="_blank"><img
												src="//ticketimage.interpark.com/Play/image/etc/24/24009913-10.jpg"
												alt="" border="0"></a></strong>
									</p>
									<p>
										<strong><a
											href="https://tickets.interpark.com/goods/24011675"
											target="_blank"><img
												src="//ticketimage.interpark.com/Play/image/etc/24/24009913-14.jpg"
												alt="" border="0"></a></strong>
									</p>
									<p>
										<strong><a
											href="https://tickets.interpark.com/goods/24008191"
											target="_blank"><img
												src="//ticketimage.interpark.com/Play/image/etc/24/24009913-09.jpg"
												alt="" border="0"></a></strong>
									</p>
								</div>
							</div>
							<div class="content prdStat">
								<h3 class="contentTitle">예매자 통계</h3>
								<div class="statWrap">
									<div class="statGender">
										<strong class="statTitle">성별</strong>
										<div class="statGenderType is-male">
											<div class="statGenderName">남자</div>
											<div class="statGenderValue">
												12.4<em class="unit">%</em>
											</div>
										</div>
										<div class="statGenderType is-female">
											<div class="statGenderName">여자</div>
											<div class="statGenderValue">
												87.6<em class="unit">%</em>
											</div>
										</div>
									</div>
									<div class="statAge">
										<strong class="statTitle">연령</strong>
										<div class="statAgeBar">
											<div class="statAgeType">
												<div class="statAgePercent">4.3%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="4.3"
														style="height: 4px;"></span>
												</div>
												<div class="statAgeName">10대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">31.3%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="31.3"
														style="height: 28px;"></span>
												</div>
												<div class="statAgeName">20대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">30%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="30"
														style="height: 24px;"></span>
												</div>
												<div class="statAgeName">30대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">22.4%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="22.4"
														style="height: 20px;"></span>
												</div>
												<div class="statAgeName">40대</div>
											</div>
											<div class="statAgeType">
												<div class="statAgePercent">10.2%</div>
												<div class="statBack">
													<span class="statGraph" data-stat-bar="10.2"
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
									role="button"><h4 class="sideTitle">관람일</h4>
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
									role="button"><h4 class="sideTitle">회차</h4>
									<div class="selectedData">
										<span class="blind">선택된 회차:</span><span class="time">1회
											19:30</span>
									</div></a>
							</div>
							<div class="sideContent">
								<div class="sideTimeTable toggleTimeTable">
									<ul class="timeTableList">
										<li class="timeTableItem"><a
											class="timeTableLabel is-toggled"
											data-tabtoggle="timeTableList" role="button" data-seq="019"
											data-text="1회 19:30">1회 <span>19:30</span><span class=""></span></a></li>
									</ul>
								</div>
								<h4 class="sideTitle blind">잔여석</h4>
								<div class="sideSeatTable">
									<ul class="seatTableList">
										<li class="seatTableItem"><strong class="seatTableName">R석</strong><span
											class="seatTableStatus">74</span></li>
										<li class="seatTableItem"><strong class="seatTableName">S석</strong><span
											class="seatTableStatus">39</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="sideContainer containerBottom">
							<div class="sideHeader">
								<h4 class="sideTitle">캐스팅</h4>
							</div>
							<div class="sideContent">
								<div class="sideCasting">
									<p class="castingList">서재희, 강승호</p>
								</div>
							</div>
						</div>
					</div>
					<div class="sideBtnWrap">
						<a class="sideBtn is-primary" href="#" data-check="false"><span>예매하기</span></a><a
							class="sideBtn is-foreign" href="#"><span><i>BOOKING</i><i
								class="slash">/</i><i>外國語</i></span></a><a
							href="https://nol.interpark.com/promotion/nol-promotion?mchtNo=INTERPARK_TICKET&amp;mchtDtlNo=06&amp;eventCode=NOIII"
							class="sideBtnLink is-nolpoint" target="_blank">NOL 카드 쓸 때마다
							10% 적립</a><a
							href="http://www.playdb.co.kr/playdb/PlaydbDetail.asp?sReqPlayNo=205376"
							class="sideBtnLink is-playdb" target="_blank" rel="noopener">이
							공연이 더 궁금하다면<span class="logo-playdb"></span><span class="blind">PLAY
								DB</span>
						</a>
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
						<span style="color: rgb(239, 62, 67);"><strong>※
								예매자는 본 안내페이지의 모든 내용을 숙지 및 동의한 것으로 간주합니다.<br> <br>※ 중학생
								이상 관람가
						</strong></span><br>- 2011년 12월 31일 이전 출생자부터 관람 가능하며 청소년의 경우 생년월일이 확인 가능한
						증빙자료(건강보험증, 여권, 주민등록등본 등)로 나이 확인 후 입장이 가능하니 반드시 지참해주시기 바랍니다.<br>-
						위 관람 등급에 부합하지 않은 경우 티켓 유무, 보호자의 동반 여부와 관계없이 공연장 입장이 제한됩니다.<br>-
						관람연령 미숙지로 인한 관람 당일 취소 및 환불, 변경 불가합니다.<br> <br> <strong>※
							본 공연은 별도의 인터미션이 없습니다.</strong><br>공연 시작 후에는 지정된 시간 외에는 입장이 불가하며, 다른
						관객의 관람에 방해가 되지 않도록예매 좌석이 아닌 다른 좌석으로 안내될 수 있습니다. 또한 공연 도중 퇴장하실 경우
						재입장이 불가합니다. 이에 따른 변경이나 환불은 불가합니다. 공연 시작 전 여유 있는 극장 방문 부탁드립니다.<br>
						<br>※ 공연 당일 티켓 수령 시 <span style="color: rgb(239, 62, 67);">예매자
							신분증+휴대폰 번호 뒷자리</span> 또는 <span style="color: rgb(239, 62, 67);">예매번호+예매자
							성함+휴대폰 번호 뒷자리</span>를 확인 후 티켓 수령이 가능합니다. 원활한 티켓 수령을 위하여 신분증, 예매내역서,
						SMS(예매번호가 포함된 메시지) 등을 지참하시길 바랍니다.<br> <br>※ <span
							style="color: rgb(239, 62, 67);">할인 받은 내역이 있으신 경우, 해당
							증빙서류를 꼭 지참</span>해주시기 바랍니다.<br>미지참 시, 정가에 대한 차액을 지불해야 티켓 수령이 가능합니다.<br>
						<br>※ 공연장 주변 교통이 혼잡하고 극장 내 주차공간이 매우 협소하므로 가급적 대중교통을 이용해주시기
						바랍니다. 주차 및 교통난으로 인한 관람 당일 취소 및 환불, 변경 불가합니다.
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
								href="http://ticket.interpark.com/TPPlace/Main/TPPlace_Detail.asp?PlaceCode=23000492"
								class="placeName">충무아트센터</a><span class="placePartner">인터파크
								파트너</span>
						</div>
						<div class="popPlaceInfo">
							<p>
								전화번호 : <span>02-2230-6600</span>
							</p>
							<p>
								주소 : <span>서울시 중구 퇴계로 387</span>
							</p>
							<p>
								홈페이지 : <a href="http://www.caci.or.kr" target="_blank"
									rel="noopener">http://www.caci.or.kr</a>
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
										<td class="category" rowspan="7"><span
											class="categoryContents">R석</span></td>
										<td class="name"><strong>일반</strong></td>
										<td><strong>70,000원</strong></td>
									</tr>
									<tr>
										<td class="name">SNS 친구 할인(동반1인)10%</td>
										<td>63,000원</td>
									</tr>
									<tr>
										<td class="name">서울시 중구민 할인(증빙지참/1인2매)10%</td>
										<td>63,000원</td>
									</tr>
									<tr>
										<td class="name">재관람할인(1인1매/지난유료티켓지참)25%</td>
										<td>52,500원</td>
									</tr>
									<tr>
										<td class="name">마티네할인(1인4매)30%</td>
										<td>49,000원</td>
									</tr>
									<tr>
										<td class="name">장애인 할인(경증,4~6급/본인만)50%</td>
										<td>35,000원</td>
									</tr>
									<tr>
										<td class="name">장애인 할인(중증,1~3급/동반1인)50%</td>
										<td>35,000원</td>
									</tr>
									<tr class="divider">
										<td class="category" rowspan="7"><span
											class="categoryContents">S석</span></td>
										<td class="name"><strong>일반</strong></td>
										<td><strong>60,000원</strong></td>
									</tr>
									<tr>
										<td class="name">SNS 친구 할인(동반1인)10%</td>
										<td>54,000원</td>
									</tr>
									<tr>
										<td class="name">서울시 중구민 할인(증빙지참/1인2매)10%</td>
										<td>54,000원</td>
									</tr>
									<tr>
										<td class="name">재관람할인(1인1매/지난유료티켓지참)25%</td>
										<td>45,000원</td>
									</tr>
									<tr>
										<td class="name">마티네할인(1인4매)30%</td>
										<td>42,000원</td>
									</tr>
									<tr>
										<td class="name">장애인 할인(경증,4~6급/본인만)50%</td>
										<td>30,000원</td>
									</tr>
									<tr>
										<td class="name">장애인 할인(중증,1~3급/동반1인)50%</td>
										<td>30,000원</td>
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
	<div class="topButtonWrapper ">
		<a href="#" class="topButton"><span class="blind">맨 위로</span></a>
	</div>
	<footer id="intFooter" layout="desktop">
		<div class="Footer_footerWrapper__1ca79 desktop">
			<div class="Footer_footerMenu__5a354">
				<div class="Footer_footerMenuContainer__67a19">
					<ul class="Footer_footerMenuList__772c2" style="flex-grow: 4;">
						<li class="Footer_desktop__f8889"><a role="link" tabindex="0"
							title="새 창으로 열림">회사소개</a></li>
						<li class=""><a role="link" tabindex="0" title="새 창으로 열림">이용약관</a></li>
						<li class="Footer_textBold__38618"><a role="link"
							tabindex="0" title="새 창으로 열림">개인정보처리방침</a></li>
						<li class=""><a role="link" tabindex="0" title="새 창으로 열림">위치기반서비스
								이용약관</a></li>
					</ul>
					<ul class="Footer_footerMenuList__772c2" style="flex-grow: 3;">
						<li class="Footer_mobile__ba312"><a role="link" tabindex="0"
							title="새 창으로 열림">분쟁해결기준</a></li>
						<li class=""><a role="link" tabindex="0" title="새 창으로 열림">여행약관</a></li>
						<li class=""><a role="link" tabindex="0" title="새 창으로 열림">여행자보험
								가입내역</a></li>
					</ul>
					<ul class="Footer_footerMenuList__772c2" style="flex-grow: 3;">
						<li class="Footer_desktop__f8889"><a role="link" tabindex="0"
							title="새 창으로 열림">티켓판매안내</a></li>
						<li class=""><a role="link" tabindex="0" title="새 창으로 열림">공지사항</a></li>
						<li class="Footer_mobile__ba312"><a role="link" tabindex="0"
							title="새 창으로 열림">고객센터</a></li>
					</ul>
					<ul class="Footer_footerMenuList__772c2" style="flex-grow: 2;">
						<li class="Footer_desktop__f8889"><a role="link" tabindex="0"
							title="새 창으로 열림">고객센터&nbsp;<svg
									xmlns="http://www.w3.org/2000/svg" width="10" height="6"
									fill="none" viewBox="0 0 10 6">
									<path stroke="#111" stroke-linecap="round"
										stroke-linejoin="round" d="M.667 1.047 4.643 5l4.024-4"
										opacity="0.8"></path></svg></a>
							<ul class="Footer_subMenu__e2ced">
								<li><a href="https://help.interpark.com/tour"
									title="새 창으로 열림">투어 고객센터</a></li>
								<li><a href="https://help.interpark.com/ticket"
									title="새 창으로 열림">티켓 고객센터</a></li>
							</ul></li>
						<li class="Footer_desktop__f8889"><a role="link" tabindex="0"
							title="새 창으로 열림">Language&nbsp;<svg
									xmlns="http://www.w3.org/2000/svg" width="10" height="6"
									fill="none" viewBox="0 0 10 6">
									<path stroke="#111" stroke-linecap="round"
										stroke-linejoin="round" d="M.667 1.047 4.643 5l4.024-4"
										opacity="0.8"></path></svg></a>
							<ul class="Footer_subMenu__e2ced">
								<li><a href="https://tickets.interpark.com"
									title="새 창으로 열림">Korean</a></li>
								<li><a
									href="http://www.globalinterpark.com/main/main?lang=en&amp;smid1=header&amp;smid2=logout&amp;smid3=language"
									title="새 창으로 열림">English</a></li>
								<li><a
									href="http://www.globalinterpark.com/main/main?lang=ja&amp;smid1=header&amp;smid2=logout&amp;smid3=language"
									title="새 창으로 열림">Japanese</a></li>
								<li><a
									href="http://www.globalinterpark.com/main/main?lang=zh&amp;smid1=header&amp;smid2=logout&amp;smid3=language"
									title="새 창으로 열림">Chinese</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="Footer_footerInfo__a9553">
				<div class="Footer_desktop__f8889">
					<h2>(주)인터파크트리플</h2>
					<div>
						<p>주소 서울 서초구 강남대로 447 남서울빌딩 6층</p>
						<p>
							<span>사업자등록번호 824-81-02515</span>&nbsp;<a
								class="Footer_linkText__6d29b" role="link" tabindex="0"
								title="새 창으로 열림">사업자정보확인</a>
						</p>
						<p>통신판매업신고 2024-서울서초-2319</p>
						<p>관광사업증 등록번호 : 제2024-000018호</p>
						<p>호스팅서비스제공자 (주)인터파크트리플｜대표이사 최휘영</p>
					</div>
				</div>
				<div class="Footer_desktop__f8889">
					<h2>고객센터</h2>
					<div>
						<p>투어 1588-3443｜티켓 1544-1555</p>
						<p>팩스 02-830-7807｜이메일 helpdesk@interparktriple.com</p>
						<p>해외항공 02-3479-4399｜국내항공 02-3479-4340</p>
						<p>
							<span><a class="Footer_linkText__6d29b" role="link"
								tabindex="0" title="새 창으로 열림">투어 1:1문의</a></span>｜<span><a
								class="Footer_linkText__6d29b"
								href="https://help.interpark.com/ticket/inquiry"
								title="새 창으로 열림">티켓 1:1문의</a></span>
						</p>
					</div>
				</div>
				<div class="Footer_desktop__f8889">
					<h2>전자금융거래 분쟁처리 담당</h2>
					<div>
						<p>투어 1588-3443｜티켓 1544-1555</p>
						<p>팩스 02-830-8295｜이메일 intersolution@interparktriple.com</p>
						<p>개인정보보호책임자 cpo@interparktriple.com</p>
					</div>
				</div>
				<details class="Footer_mobile__ba312">
					<summary>
						<p>(주)인터파크트리플</p>
						<p>사업자정보</p>
						<svg xmlns="http://www.w3.org/2000/svg" width="10" height="6"
							fill="none" viewBox="0 0 10 6">
							<path stroke="#111" stroke-linecap="round"
								stroke-linejoin="round" d="M.667 1.047 4.643 5l4.024-4"
								opacity="0.8"></path></svg>
					</summary>
					<address>
						<p>서울 서초구 강남대로 447 남서울빌딩 6층</p>
						<p>호스팅서비스제공자 (주)인터파크트리플｜대표이사 최휘영</p>
						<p>
							<span>사업자등록번호&nbsp;824-81-02515&nbsp;</span><a
								class="Footer_underline__c1bc5" role="link" tabindex="0">사업자정보확인</a>
						</p>
						<p>통신판매업신고 2024-서울서초-2319</p>
						<p>관광사업증 등록번호 : 제2024-000018호</p>
						<p>투어 1588-3443 | 티켓 1544-1555</p>
						<p>해외항공 02-3479-4399 | 국내항공 02-3479-4340</p>
						<p>이메일 helpdesk@interparktriple.com</p>
					</address>
				</details>
			</div>
			<div class="Footer_footerNotice__67e58">
				<p>(주)인터파크트리플은 항공사가 제공하는 개별 항공권 및 여행사가 제공하는 일부 여행상품에 대하여
					통신판매중개자의 지위를 가지며, 해당상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있습니다.</p>
				<p>항공권 또는 항공권이 포함된 경우, 표시되는 상품요금은 예상 유류할증료와 제세공과금이 포함된 가격이며,
					발권일/환율 등에 따라 변동될 수 있습니다.</p>
				<p>(주)인터파크트리플은 인터파크티켓, 인터파크투어의 통신판매중개자로서 통신판매의 당사자가 아니므로, 개별
					판매자가 등록한 오픈마켓 상품에 대해서 (주)인터파크트리플은 일체 책임을 지지 않습니다.</p>
				<p class="Footer_desktop__f8889">Copyright ⓒ InterparkTriple
					Corp. All Rights Reserved.</p>
			</div>
		</div>
	</footer>
</div>