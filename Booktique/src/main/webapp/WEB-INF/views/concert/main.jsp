<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
<style>
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

/*     .mySwiper { */
/*       width: 100%; */
/*       height: 100%; */
/*     } */

/*     .swiper-slide { */
/*       text-align: center; */
/*       font-size: 18px; */
/*       background: #fff; */
/*       display: flex; */
/*       justify-content: center; */
/*       align-items: center; */
/*     } */

/*      .swiper-slide img { */
/*        display: block; */
/*       width: 100%; */
/*       height: 100%; */
/*       object-fit: cover; */
/*      } */
</style>

			<div id="_Ram_"
				class="GBigBanner BigBanner_bigBannerWrap__ZIaFE HorizontalList_swiperWrap__4f4d9 HorizontalList_swiperButtonCenter__bd963">
				<div class="mySwiper HorizontalList_wrap__5c3c0">
					<div class="swiper-wrapper">
						<c:forEach var="concert" items="${allList}" varStatus="stat">
			<div
				class="swiper-slide HorizontalList_swiperSlide__fce1f BigBanner_bannerSlide__WNhKi">
				<p>왜 이거 있어야 나오냐</p>
				<a href="https://tickets.interpark.com/goods/24012290"
					class="BigBanner_link__GCNo8"><img
					alt="2024 타임캡슐 슈퍼콘서트 전국투어 in 일산" crossorigin="anonymous"
					fetchpriority="high" loading="eager" decoding="async"
					data-nimg="fill" class=""
					style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
					sizes="(max-width: 1023px) 33vw, 25vw"
					src="/resources/img/콘서트이미지.gif" />
				<ul class="BigBanner_contents__R9Ifu" style="color: #FFFFFF">
						<li class="BigBanner_subTitle__uw_f4">2024 전국투어 in 일산</li>
						<li class="BigBanner_title__seLOS">타임캡슐 슈퍼콘서트</li>
						<li class="BigBanner_placeName__tk6Gd">일산 킨텍스 제2전시장 10홀</li>
						<li class="BigBanner_playDate__48Hsf">2024.11.16</li>
					</ul></a>
				<div></div>
			</div>
							<div
								class="swiper-slide HorizontalList_swiperSlide__fce1f BigBanner_bannerSlide__WNhKi">
								<p>2번 콘서트</p>
								<a href="https://tickets.interpark.com/goods/24011164"
									class="BigBanner_link__GCNo8"><img
									alt="2024 성시경 with friends ［자, 오늘은］" crossorigin="anonymous"
									fetchpriority="high" loading="eager" decoding="async"
									data-nimg="fill" class=""
									style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
									sizes="(max-width: 1023px) 33vw, 25vw"
									src="/resources/img/콘서트이미지.gif" />
									<ul class="BigBanner_contents__R9Ifu" style="color: #000000">
										<li class="BigBanner_subTitle__uw_f4">［자, 오늘은］</li>
										<li class="BigBanner_title__seLOS">성시경 with friends</li>
										<li class="BigBanner_placeName__tk6Gd">KSPO DOME</li>
										<li class="BigBanner_playDate__48Hsf">2024.09.07 -
											2024.09.08</li>
									</ul></a>
							</div>
						</c:forEach>
					</div>
				</div>
				<button class="HorizontalList_swiperPrev__b45cd">이전</button>
				<button class="HorizontalList_swiperNext__1f674">다음</button>
			</div>
			<article class="GSubCategory Panel_wrap__b444b">
				<section class="Panel_subWrap__5147a">
					<div class="Panel_contents__f7025 Panel_fill__79649">
						<div role="presentation" class="ScrollPanel_scroll__8af96">
							<div
								class="SubCategory_subCategoryWrap__RBfzl SubCategory_column-mo-7__PTWnj"
								style="min-width: 1023px">
								<button type="button" aria-label="콘서트 전체보기"
									class="SubCategory_btnCategory__i_55b">
									콘서트 전체보기<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="요즘 HOT"
									class="SubCategory_btnCategory__i_55b">
									<img alt="" crossorigin="anonymous" loading="lazy" width="24"
										height="24" decoding="async" data-nimg="1" class=""
										style="color: transparent" src="/resources/img/hot.png" />요즘
									HOT<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="발라드"
									class="SubCategory_btnCategory__i_55b">
									발라드<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="락/메탈"
									class="SubCategory_btnCategory__i_55b">
									락/메탈<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="랩/힙합"
									class="SubCategory_btnCategory__i_55b">
									랩/힙합<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="재즈/소울"
									class="SubCategory_btnCategory__i_55b">
									재즈/소울<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="디너쇼"
									class="SubCategory_btnCategory__i_55b">
									디너쇼<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="포크/트로트"
									class="SubCategory_btnCategory__i_55b">
									포크/트로트<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="내한공연"
									class="SubCategory_btnCategory__i_55b">
									내한공연<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="페스티벌"
									class="SubCategory_btnCategory__i_55b">
									페스티벌<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="팬클럽/팬미팅"
									class="SubCategory_btnCategory__i_55b">
									팬클럽/팬미팅<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="인디"
									class="SubCategory_btnCategory__i_55b">
									인디<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
								<button type="button" aria-label="토크/강연"
									class="SubCategory_btnCategory__i_55b">
									토크/강연<img alt="" crossorigin="anonymous" loading="eager"
										width="12" height="12" decoding="async" data-nimg="1"
										class="SubCategory_arrow___Lpr3" style="color: transparent"
										src="/resources/img/line.svg" />
								</button>
							</div>
						</div>
					</div>
				</section>
			</article>
			<article class="Panel_wrap__b444b">
				<section class="Panel_subWrap__5147a">
					<div class="Panel_contents__f7025 Panel_pd-l__27d91">
						<div class="MiniBanner_miniBanner__2ec1f GMiniBanner">
							<ul class="MiniBanner_miniBannerInner__58520">
								<!-- 6번 반복 시작 -->
								<c:forEach var="concert" items="${allList}" varStatus="stat">
									<li class=""><a class="Ticket_Minibanner_PC"
										href="https://tickets.interpark.com/goods/24009876"><img
											alt="NELL CLUB CONCERT 2024 ‘Our Eutopia’"
											crossorigin="anonymous" fetchpriority="high" decoding="async"
											data-nimg="fill" class="MiniBanner_promotionImage__36e77"
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="413px" src="/resources/img/콘서트이미지.gif" /></a></li>
								</c:forEach>
								<!-- 6번 반복 끝 -->
							</ul>
						</div>
					</div>
				</section>
			</article>
			<article class="GTicketOpen Panel_wrap__b444b">
				<section class="Panel_subWrap__5147a Panel_btnText__7ccdc">
					<div class="Panel_title__4b2ff">
						<h2>티켓 오픈</h2>
					</div>
					<div class="Panel_contents__f7025 Panel_fill__79649">
						<div id="_R4qm_"
							class="HorizontalList_swiperWrap__4f4d9 HorizontalList_swiperButton150__c792d">
							<div class="mySwiper HorizontalList_wrap__5c3c0">
								<div class="swiper-wrapper">
									<c:forEach var="concert" items="${allList}" varStatus="stat">
										<div class="swiper-slide HorizontalList_swiperSlide__fce1f">
											<a role="link" tabindex="0"
												class="TicketOpenItem_ticketOpenItem__CocKp"><div
													class="TicketOpenItem_imageWrap__0L8do">
													<img alt="애론 골드버그 트리오 내한공연" crossorigin="anonymous"
														loading="eager" decoding="async" data-nimg="fill" class=""
														style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
														sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
														src="/resources/img/콘서트이미지.gif" />
												</div>
												<ul class="TicketOpenItem_contents__Z90Pb">
													<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
													<li class="TicketOpenItem_ticketOpenDate___mmvY">오늘
														09:00</li>
													<li class="TicketOpenItem_ticketOpenTitle__KIWtt">애론
														골드버그 트리오 내한공연</li>
													<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
												</ul></a>
										</div>
									</c:forEach>
								</div>
							</div>
							<button class="HorizontalList_swiperPrev__b45cd">이전</button>
							<button class="HorizontalList_swiperNext__1f674">다음</button>
						</div>
					</div>
					<div class="Panel_btn__2ff20">
						<button class="Button_btn__78ad7">
							티켓 오픈 전체보기
							<svg xmlns="http://www.w3.org/2000/svg" width="13" height="12"
								fill="none" viewBox="0 0 13 12">
								<path fill="#666" fill-rule="evenodd"
									d="M2.952 11.761a.748.748 0 0 1 .037-1.06l5.06-4.7-5.004-4.706a.748.748 0 0 1-.03-1.06.755.755 0 0 1 1.064-.03l6.171 5.803-6.234 5.79a.755.755 0 0 1-1.064-.037Z"
									clip-rule="evenodd"></path></svg>
						</button>
					</div>
				</section>
			</article>
			<article
				class="ProductList_productListWrapper__frZE_ GProductList Panel_wrap__b444b">
				<section class="Panel_subWrap__5147a">
					<div class="Panel_title__4b2ff">
						<h2>콘서트 둘러보기</h2>
					</div>
					<div class="Panel_contents__f7025 Panel_fill-scroll__8271f">
						<div class="ProductList_stickyFilter__YqRID" aria-label="둘러보기 필터">
							<div role="presentation"
								class="ScrollPanel_scroll__8af96 GenreFilterTab_genreFilterTab__O9JDM">
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="전체" aria-selected="false">
									<span>전체</span>
								</button>
								<button role="tab"
									class="genre-tab-item TabItem_tabItem__9384c TabItem_active__0d137"
									title="선택됨" aria-label="요즘 HOT" aria-selected="true">
									<img alt="" crossorigin="anonymous" loading="lazy" width="20"
										height="20" decoding="async" data-nimg="1" class=""
										style="color: transparent" src="/resources/img/hot.png" /><span>요즘
										HOT</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="발라드" aria-selected="false">
									<span>발라드</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="락/메탈" aria-selected="false">
									<span>락/메탈</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="랩/힙합" aria-selected="false">
									<span>랩/힙합</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="재즈/소울" aria-selected="false">
									<span>재즈/소울</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="디너쇼" aria-selected="false">
									<span>디너쇼</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="포크/트로트" aria-selected="false">
									<span>포크/트로트</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="내한공연" aria-selected="false">
									<span>내한공연</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="페스티벌" aria-selected="false">
									<span>페스티벌</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="팬클럽/팬미팅" aria-selected="false">
									<span>팬클럽/팬미팅</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="인디" aria-selected="false">
									<span>인디</span>
								</button>
								<button role="tab" class="genre-tab-item TabItem_tabItem__9384c"
									title="" aria-label="토크/강연" aria-selected="false">
									<span>토크/강연</span>
								</button>
							</div>
						</div>
						<%-- 						${allList} --%>
						<div
							class="ProductList_contents__eUxgq InfiniteList_list__3c511 InfiniteList_column-desktop-5__9cab3 InfiniteList_column-mobile-1__853f7 InfiniteList_ticket-list__dfe68"
							aria-label="상품 리스트">
							<c:forEach var="concert" items="${allList}" varStatus="stat">
								<a role="link" tabindex="0"
									class="TicketItem_ticketItem__ TicketItem_ticketItem__H51Vs"
									gtm-label="2024 2NE1 CONCERT ［WELCOME BACK］ IN SEOUL">
									<div class="TicketItem_imageWrap__iVEOw">
										<img decoding="async" data-nimg="fill"
											class="TicketItem_image__U6xq6"
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											src="${concert.mainImg}" />
									</div>
									<ul class="TicketItem_contentsWrap__xCe3A">
										<li class="TicketItem_goodsName__Ju76j">${concert.showName}</li>
										<li class="TicketItem_placeName__ls_9C">${concert.subImg}</li>
										<li class="TicketItem_playDate__5ePr2">${concert.detailImg}</li>
										<li class="TicketItem_saleBadge__bbqu9">
											<div class="SaleBadge_labelWrap__d96fb">
												<span
													class="SaleBadge_seatBadge__f3f1e SaleBadge_purple__fcbd1">단독판매</span>
											</div>
										</li>
									</ul>
								</a>
							</c:forEach>
						</div>
					</div>
				</section>
			</article>
			<script>
	let catBtns = document.querySelectorAll(".SubCategory_btnCategory__i_55b");
	console.log("catBtns : ",catBtns);
	
// 	catBtns.addEventListener("click", function(){
// 		alert("악");
// 	});

	var swiper = new Swiper(".mySwiper", {
		loop : true,
		autoplay : {
			delay : 1000
		},
		speed : 500,
		slidesPerView : 4,
		mousewheel : {
			invert : true,
		},
		navigation : {
			nextEl : ".HorizontalList_swiperNext__1f674",
			prevEl : ".HorizontalList_swiperPrev__b45cd",
		},
	});	
</script>