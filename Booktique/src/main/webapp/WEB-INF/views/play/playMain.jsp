<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"  %>
	
<!-- 슬라이드 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<script>
/**
 * 인기차트 슬라이드 쇼 Swiper 
 */
new Swiper('.swiper-container', {
	slidesPerView : 4,  // 동시에 보여줄 슬라이드 갯수
	spaceBetween : 10,  // 슬라이드간 간격
	slidesPerGroup : 2, // 그룸화

	// 그룹수가 맞지 않을 경우 빈칸으로 메우기
	loopFillGroupWithBlank : true,

	loop : true, // 무한 반복
    autoplay: {
          delay: 3000, // 3초마다 자동 재생
          dynamicBullets: true,
          disableOnInteraction: false // 사용자 상호 작용 후에도 자동 재생 유지
        },  
	pagination : { // 페이징
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},
	navigation : { // 네비게이션
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
    mousewheel: true, // 마우스 휠로 슬라이드 이동 가능
});

</script>
<main id="contents">

	<div id="_Ram_"
		class="GBigBanner BigBanner_bigBannerWrap__ZIaFE HorizontalList_swiperWrap__4f4d9 HorizontalList_swiperButtonCenter__bd963">
		<div style="border: 1px solid gray; border-radius: 25px; width: 175px; padding: 6px; display: flex; align-items: center;">
		    <img src="/resources/img/fire.png" width="50" height="50" style="margin-right: 10px;">
		    <span style="font-size: 24px; font-weight: bold;">요즘 HOT</span>
		</div>
		<br>
		
<!-- 슬라이드  시작 -->
		<div class="swiper-slide HorizontalList_swiperSlide__fce1f BigBanner_bannerSlide__WNhKi swiper-slide-next"
					style="width: 305px; margin-right: 20px;">
			<div class="swiper-container" style="background: linear-gradient(-225deg, #FFFEFF 0%, #f1ffff 100%);">
				<div class="swiper-wrapper">


				</div>

				<div class="swiper-pagination"></div>
				
			</div>
		</div>
		
		
		<button class="HorizontalList_swiperPrev__b45cd">이전</button>
		<button class="HorizontalList_swiperNext__1f674">다음</button>
	</div>
	
<!-- 슬라이드  끝 -->
	
	<article class="Panel_wrap__b444b">
		<section class="Panel_subWrap__5147a">
			<div class="Panel_contents__f7025 Panel_pd-l__27d91">
				<div class="MiniBanner_miniBanner__2ec1f GMiniBanner">
					<ul class="MiniBanner_miniBannerInner__58520">
						<li class=""><a class="Ticket_Minibanner_PC"
							href="https://events.interpark.com/exhibition?exhibitionCode=240305008"><img
								alt="청년문화예술패스" crossorigin="anonymous" fetchpriority="high"
								decoding="async" data-nimg="fill"
								class="MiniBanner_promotionImage__36e77"
								style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
								sizes="413px"
								srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=16&amp;q=75 16w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=32&amp;q=75 32w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=48&amp;q=75 48w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=64&amp;q=75 64w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=96&amp;q=75 96w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=3840&amp;q=75 3840w"
								src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240412051247_19018229.gif&amp;w=3840&amp;q=75"></a></li>
						<li class=""><a class="Ticket_Minibanner_PC"
							href="https://events.interpark.com/page?pageId=CCC000014P1#subCorner_220608004"><img
								alt="공연, 이달의 혜택" crossorigin="anonymous" fetchpriority="high"
								decoding="async" data-nimg="fill"
								class="MiniBanner_promotionImage__36e77"
								style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
								sizes="413px"
								srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=16&amp;q=75 16w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=32&amp;q=75 32w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=48&amp;q=75 48w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=64&amp;q=75 64w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=96&amp;q=75 96w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=3840&amp;q=75 3840w"
								src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2402%2F240205060138_19018229.gif&amp;w=3840&amp;q=75"></a></li>
						<li class=""><a class="Ticket_Minibanner_PC"
							href="https://events.interpark.com/exhibition?exhibitionCode=200630010"><img
								alt="혜화역 5번출구" crossorigin="anonymous" fetchpriority="high"
								decoding="async" data-nimg="fill"
								class="MiniBanner_promotionImage__36e77"
								style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
								sizes="413px"
								srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=16&amp;q=75 16w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=32&amp;q=75 32w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=48&amp;q=75 48w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=64&amp;q=75 64w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=96&amp;q=75 96w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=3840&amp;q=75 3840w"
								src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTCMS3.0%2FGMain%2FPlay%2F2404%2F240416024641_24000709.gif&amp;w=3840&amp;q=75"></a></li>
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
					<div
						class="HorizontalList_wrap__5c3c0 swiper-backface-hidden swiper-initialized swiper-horizontal swiper-pointer-events">
						<div class="swiper-wrapper">
							<div
								class="swiper-slide HorizontalList_swiperSlide__fce1f swiper-slide-active"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="하(夏)! 수상한 이야기 " crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011610_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">오늘 10:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">하(夏)!
											수상한 이야기</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div
								class="swiper-slide HorizontalList_swiperSlide__fce1f swiper-slide-next"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="2024 연극 〈친정엄마와 2박 3일〉 - 충추" crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011558_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">오늘 14:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">2024 연극
											〈친정엄마와 2박 3일〉 - 충추</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="연극 〈엔젤스 인 아메리카 - 파트원:밀레니엄이 다가온다〉 "
											crossorigin="anonymous" loading="eager" decoding="async"
											data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2FL0%2FL0000092_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"><span
											class="TicketOpenItem_red__fTit3">단독판매</span><span
											class="TicketOpenItem_gray__jRt67">TOPING 선예매</span></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">오늘 15:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">연극 〈엔젤스
											인 아메리카 - 파트원:밀레니엄이 다가온다〉</li>
										<li class="TicketOpenItem_openType__yEbfb">마지막 티켓오픈</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="낭독 공연 〈굿피플〉 " crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011706_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.14(수)
											11:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">낭독 공연
											〈굿피플〉</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="사랑에 빠지기까지 디마이너스백 " crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F23%2F23015628_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.16(금)
											09:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">사랑에
											빠지기까지 디마이너스백</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="4D공포연극 〈스위치〉 " crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F22%2F22001006_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"><span
											class="TicketOpenItem_red__fTit3">단독판매</span></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.16(금)
											09:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">4D공포연극
											〈스위치〉</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="연극 〈사운드 인사이드〉 " crossorigin="anonymous"
											loading="eager" decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24009913_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"><span
											class="TicketOpenItem_red__fTit3">단독판매</span></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.16(금)
											11:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">연극 〈사운드
											인사이드〉</li>
										<li class="TicketOpenItem_openType__yEbfb">2차 티켓오픈</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="연극 〈마우스트랩〉 " crossorigin="anonymous" loading="eager"
											decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24011658_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.16(금)
											11:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">연극
											〈마우스트랩〉</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="〈바스커빌 : 셜록홈즈 미스터리〉 Chapter2 "
											crossorigin="anonymous" loading="eager" decoding="async"
											data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FPlay%2Fimage%2Flarge%2F24%2F24007536_p.gif&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.16(금)
											14:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">〈바스커빌 :
											셜록홈즈 미스터리〉 Chapter2</li>
										<li class="TicketOpenItem_openType__yEbfb">4차 티켓오픈</li>
									</ul></a>
							</div>
							<div class="swiper-slide HorizontalList_swiperSlide__fce1f"
								style="width: 240px; margin-right: 20px;">
								<a role="link" tabindex="0"
									class="TicketOpenItem_ticketOpenItem__CocKp"><div
										class="TicketOpenItem_imageWrap__0L8do">
										<img alt="헤어지는 기쁨 " crossorigin="anonymous" loading="eager"
											decoding="async" data-nimg="fill" class=""
											style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
											sizes="(max-width: 760px) 25vw, (max-width: 1279px) 25vw, 20vw"
											srcset="/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=128&amp;q=75 128w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=256&amp;q=75 256w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=384&amp;q=75 384w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=640&amp;q=75 640w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=750&amp;q=75 750w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=828&amp;q=75 828w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=1080&amp;q=75 1080w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=1200&amp;q=75 1200w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=1920&amp;q=75 1920w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=2048&amp;q=75 2048w, /contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=3840&amp;q=75 3840w"
											src="https://tickets.interpark.com/contents/_next/image?url=http%3A%2F%2Fticketimage.interpark.com%2FTicketImage%2Fnotice_poster%2F20%2F2024073117202429.jpg&amp;w=3840&amp;q=75">
									</div>
									<ul class="TicketOpenItem_contents__Z90Pb">
										<li class="TicketOpenItem_saleBadgeWrap__8U26r"></li>
										<li class="TicketOpenItem_ticketOpenDate___mmvY">8.19(월)
											09:00</li>
										<li class="TicketOpenItem_ticketOpenTitle__KIWtt">헤어지는 기쁨</li>
										<li class="TicketOpenItem_openType__yEbfb">일반예매</li>
									</ul></a>
							</div>
						</div>
					</div>
					<button
						class="HorizontalList_swiperPrev__b45cd HorizontalList_swiper_disabled__e35dc"
						disabled="">이전</button>
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
</main>