<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<link rel="stylesheet" href="/resources/css/mf.min.css" />
<!-- 슬라이드 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style type="text/css">
.Panel_title__4b2ff {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: flex-start;
	padding: 80px 0 0;
	cursor: default;
	width: 100%;
}

.Panel_title__4b2ff h2 {
	font-style: normal;
	font-weight: 700;
	font-size: 28px;
	line-height: 150%;
	display: flex;
	align-items: center;
	color: #000;
	margin-bottom: 20px;
}

.RadioGroup_radioGroup__70781 {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 8px;
	margin-bottom: 30px;
}
.HorizontalList_swiperButtonCenter__bd963 .HorizontalList_swiperNext__1f674, .HorizontalList_swiperButtonCenter__bd963 .HorizontalList_swiperPrev__b45cd {
	top: 50%;
	transform: translateY(-50%);
}
.HorizontalList_swiperPrev__b45cd {
	left: calc((100% - 128rem) / 2 - 2.4rem);
}
.HorizontalList_swiperNext__1f674 {
	right: calc((100% - 128rem) / 2 - 2.4rem);
}
.swiper-slide {
    width: 25%;
    box-sizing: border-box;
}
.ProductList_contents__eUxgq {
	max-width: 1280px;
	width: calc(100% - 60px);
	margin: 0 auto;
	box-sizing: border-box;
}
.InfiniteList_column-desktop-5__9cab3 {
	grid-template-columns: repeat(5, 1fr);
}
.InfiniteList_ticket-list__dfe68 {
	gap: 50px 20px;
}
.InfiniteList_list__3c511 {
	display: grid;
	justify-content: center;
}
.Panel_wrap__b444b .Panel_subWrap__5147a .Panel_contents__f7025 {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 0;
	gap: 20px;
	isolation: isolate;
	position: relative;
	width: 100%;
}
.container-fluid {
	margin-bottom: 100px;
}
</style>
<div id="_Ram_" class="GBigBanner BigBanner_bigBannerWrap__ZIaFE HorizontalList_swiperWrap__4f4d9 HorizontalList_swiperButtonCenter__bd963">
	<div class="HorizontalList_wrap__5c3c0 swiper-backface-hidden swiper-initialized swiper-horizontal swiper-pointer-events">
		<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-650px, 0px, 0px);">
			<c:forEach var="campVO" items="${campList}">
				<c:if test="${campVO.campNo >= 1 && campVO.campNo <= 10}">
					<div class="swiper-slide HorizontalList_swiperSlide__fce1f BigBanner_bannerSlide__WNhKi swiper-slide-active"
						style="width: 305px; margin-right: 20px;">
						<a href="/camp/detail?camp_no=${campVO.campNo}" class="BigBanner_link__GCNo8">
							<img alt="${campVO.campName}" fetchpriority="high" loading="lazy"
							decoding="async" data-nimg="fill" class="" style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
							sizes="(max-width: 1023px) 33vw, 25vw" src="${campVO.campMainImg}">
							<ul class="BigBanner_contents__R9Ifu" style="color: #FFFFFF">
<!-- 								<li class="BigBanner_subTitle__uw_f4">인터파크 단독!</li> -->
								<li class="BigBanner_title__seLOS" style="font-size:20px;">${campVO.campName}</li>
								<li class="BigBanner_placeName__tk6Gd">${campVO.campAddr}</li>
							</ul>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<button class="HorizontalList_swiperPrev__b45cd">이전</button>
	<button class="HorizontalList_swiperNext__1f674">다음</button>
</div>
<!-- <div class="Panel_title__4b2ff"> -->
<!-- 	<h2>지역별 추천 상품</h2> -->
<!-- </div> -->

<div class="Panel_title__4b2ff">
	<h2><img alt="캠핑장이미지" src="/resources/img/camp.png" style="width:45px; margin-right:15px;">캠핑장 둘러보기</h2>
</div>
	<div class="RadioGroup_radioGroup__70781">
		<button role="tab" class="RadioGroup_regionButton__49f75 RadioGroup_selected__c06ed" title="선택됨" aria-selected="true" aria-label="전체" data-area="전체">전체</button>
		<button role="tab" class="RadioGroup_regionButton__49f75" title="" aria-selected="false" aria-label="경기" data-area="ac41">경기</button>
		<button role="tab" class="RadioGroup_regionButton__49f75" title="" aria-selected="false" aria-label="강원" data-area="ac42">강원</button>
		<button role="tab" class="RadioGroup_regionButton__49f75" title="" aria-selected="false" aria-label="충남/충북" data-area="ac43">충남/충북</button>
		<button role="tab" class="RadioGroup_regionButton__49f75" title="" aria-selected="false" aria-label="전남/전북" data-area="ac45">전남/전북</button>
		<button role="tab" class="RadioGroup_regionButton__49f75" title="" aria-selected="false" aria-label="경남/경북" data-area="ac50">경남/경북</button>
	</div>


	<div class="ProductList_contents__eUxgq InfiniteList_list__3c511 InfiniteList_column-desktop-5__9cab3 InfiniteList_column-mobile-1__853f7 InfiniteList_ticket-list__dfe68" aria-label="상품 리스트" id="campList">
	</div>
	
<script>
	new Swiper('.swiper-horizontal', {
		slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
		spaceBetween : 20, // 슬라이드간 간격
	
		// 그룹수가 맞지 않을 경우 빈칸으로 메우기
		loopFillGroupWithBlank : true,
	
		loop : true, // 무한 반복
		autoplay : {
			delay : 3000, // 3초마다 자동 재생
			dynamicBullets : true,
			disableOnInteraction : false
		// 사용자 상호 작용 후에도 자동 재생 유지
		},
		navigation : { // 네비게이션
			nextEl : '.HorizontalList_swiperNext__1f674', 
			prevEl : '.HorizontalList_swiperPrev__b45cd', 
		},
		mousewheel : true, // 마우스 휠로 슬라이드 이동 가능
	});
	
	// 페이지 로드 시 전체 캠핑장 리스트를 자동으로 로드
	$(document).ready(function() {
		// 전체 버튼 클릭 상태로 기본 설정
		var defaultAreaCode = '전체';
		$('button[data-area="' + defaultAreaCode + '"]').addClass('RadioGroup_selected__c06ed');
		
		// 전체 캠핑장 리스트 로드
		loadCampList(defaultAreaCode);

		$('button').click(function() {
			// 모든 버튼에서 'selected' 클래스 제거
			$('button').removeClass('RadioGroup_selected__c06ed');
			
			// 클릭된 버튼에 'selected' 클래스 추가
			$(this).addClass('RadioGroup_selected__c06ed');
			
			// 데이터-영역 속성 값을 가져오기
			var areaCode = $(this).data('area');
			
			// AJAX 요청
			loadCampList(areaCode);
		});

		function loadCampList(areaCode) {
			$.ajax({
				url: '/filterCamp',
				type: 'GET',
				data: { areaCode: areaCode },
				success: function(data) {
					var campListDiv = $('#campList');
					campListDiv.empty(); // 기존 캠핑장 목록을 비웁니다.
					
					if (data.length > 0) {
						data.forEach(function(camp) {
// 							console.log(camp);
							var campHtml = '<a href="/camp/detail?camp_no=' + encodeURIComponent(camp.campNo) + '" tabindex="0" class="TicketItem_ticketItem__ TicketItem_ticketItem__H51Vs" gtm-label="' + camp.campName + '">' +
								'<div class="TicketItem_imageWrap__iVEOw">' +
								'<img alt="" loading="eager" decoding="async" data-nimg="fill" class="TicketItem_image__U6xq6" sizes="(max-width: 1023px) 104px, 25vw" src="' + camp.campMainImg + '" style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">' +
								'</div>' +
								'<ul class="TicketItem_contentsWrap__xCe3A">' +
								'<li class="TicketItem_goodsName__Ju76j">' + camp.campName + '</li>' +
								'<li class="TicketItem_placeName__ls_9C">' + (camp.campEtc ? camp.campEtc : '') + '</li>' +
								'<li class="TicketItem_saleBadge__bbqu9">' +
								'<div class="SaleBadge_labelWrap__d96fb">' +
								'<span class="SaleBadge_seatBadge__f3f1e SaleBadge_purple__fcbd1">단독판매</span>' +
								'</div>' +
								'</li>' +
								'</ul>' +
								'</a>';
							campListDiv.append(campHtml);
						});
					} else {
						campListDiv.append('<p>해당지역에 캠핑장이 없습니다.</p>');
					}
				},
				error: function() {
				}
			});
		}
	});
</script>