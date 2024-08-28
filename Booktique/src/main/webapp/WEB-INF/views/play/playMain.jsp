<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- 슬라이드 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>


<style>
/*------------------------------------인기슬라이드---------------------------------------*/
.gradient-overlay {
    position: absolute; 
    top: 0; 
    left: 0; 
    width: 100%; 
    height: 100%; 
    background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 35%, rgba(255, 255, 255, 0.8) 90%); /* 위쪽은 투명, 아래쪽은 흰색 그라데이션 */
    pointer-events: none; /* 오버레이가 클릭 이벤트를 방해하지 않도록 설정 */
}
/*------------------------------------인기슬라이드---------------------------------------*/
/*------------------------------------지도---------------------------------------*/
.area {
	position: absolute;
	background: #fff;
	border: 1px solid #888;
	border-radius: 3px;
	font-size: 12px;
	top: -5px;
	left: 15px;
	padding: 2px;
}

.info {
	font-size: 12px;
	padding: 5px;
}

.info .title {
	font-weight: bold;
}

#mapDiv {
	display: flex;
	align-items: center;
	padding: 0;
	gap: 20px;
	isolation: isolate;
	position: relative;
	width: 100%;
	justify-content: center;
}

.recImg {
	height: 318px;
	width: 268px;
	margin-left: 8px;
}

#playRec {
	width: 50%;
	height: 450px;
	border: 2px solid;
	display: flex;
	align-items: center;
	justify-content: space-evenly;
}
/*------------------------------------지도---------------------------------------*/

/*-----------------------------------전체보기--------------------------------------*/
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

.Panel_subWrap__5147a {
	min-height: 100vh;
}
/*-----------------------------------전체보기--------------------------------------*/
</style>



<main id="contents">

	<div id="_Ram_" class="GBigBanner BigBanner_bigBannerWrap__ZIaFE HorizontalList_swiperWrap__4f4d9 HorizontalList_swiperButtonCenter__bd963">

		<div id="listBtn"
			style="cursor: pointer; border: 1px solid gray; border-radius: 25px; width: 190px; padding: 6px; display: flex; align-items: center; padding: 14px;">
			<span style="font-size: 24px; font-weight: bold;">연극 전체보기 &nbsp; &gt;</span>
		</div>
		<br>

		<!-- 슬라이드  시작 -->
		<div class="HorizontalList_wrap__5c3c0 swiper-initialized swiper-horizontal swiper-pointer-events">
			<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1615px, 0px, 0px); padding-left: 21px;">
				
				<c:forEach var="playHotList" items="${playHotList}" varStatus="stat">
					<div style="width: 290px; margin-right: 20px;"
						class="swiper-slide HorizontalList_swiperSlide__fce1f BigBanner_bannerSlide__WNhKi not-intersecting">

						<a href="https://tickets.interpark.com/contents/bridge/24005706" class="BigBanner_link__GCNo8"> 
							<img src="${playHotList.mainImg}"
								sizes="(max-width: 1023px) 33vw, 25vw"
								style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;" >
								 <div class="gradient-overlay"></div>

							<ul class="BigBanner_contents__R9Ifu" style="color: rgb(0, 0, 0);">
								<li class="BigBanner_subTitle__uw_f4"></li>
								<li class="BigBanner_title__seLOS">${playHotList.showName}</li>
								<li class="BigBanner_placeName__tk6Gd">${playHotList.detailImg}</li>
								<li class="BigBanner_playDate__48Hsf">${playHotList.startDate}~${playHotList.endDate}</li>
							</ul>
						</a>

					</div>
				</c:forEach>
			
			</div>
		</div>


	</div>


	<!-- 슬라이드  끝 -->

	<!-- 광고 배너 시작 -->

	<div class="Panel_contents__f7025 Panel_pd-l__27d91" style="margin-left: 313px;">
		<div class="MiniBanner_miniBanner__2ec1f GMiniBanner">
			<ul class="MiniBanner_miniBannerInner__58520">
				<li class=""><a class="Ticket_Minibanner_PC"
					href="https://events.interpark.com/exhibition?exhibitionCode=240305008">
						<img alt="［로터리 티켓］ 연극 〈엔젤스 인 아메리카 - 파트원:밀레니엄이 다가온다〉"
						style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
						sizes="413px" src="/resources/img/play/배너1.png">
				</a></li>
				<li class=""><a class="Ticket_Minibanner_PC"
					href="https://events.interpark.com/page?pageId=CCC000014P1#subCorner_220608004"><img
						class="MiniBanner_promotionImage__36e77"
						style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
						sizes="413px" src="/resources/img/play/배너2.png"></a></li>
				<li class=""><a class="Ticket_Minibanner_PC"
					href="https://events.interpark.com/exhibition?exhibitionCode=200630010"><img
						class="MiniBanner_promotionImage__36e77"
						style="position: absolute; height: 100%; width: 100%; left: 0; top: 0; right: 0; bottom: 0; color: transparent"
						sizes="413px" src="/resources/img/play/배너3.png"></a></li>
			</ul>
		</div>
	</div>

	<!-- 광고 배너 끝 -->


	<!-- 지역별 추천 시작 -->

	<article class="GTicketOpen Panel_wrap__b444b">
		<section class="Panel_subWrap__5147a Panel_btnText__7ccdc">
			<div class="Panel_title__4b2ff">
				<h2>지역 별 추천</h2>
			</div>

			<div id="mapDiv">
				<div id="map" style="width: 17%; height: 610px;"></div>
				<div id="playRec"></div>
			</div>

		</section>
	</article>

	<!-- 지역별 추천끝 -->


	<!-- 전체 리스트  -->
	<article id="playList" class="ProductList_productListWrapper__frZE_ GProductList Panel_wrap__b444b">
		<section class="Panel_subWrap__5147a">
			<div class="Panel_title__4b2ff">
				<h2>연극 둘러보기</h2>
			</div>
			<hr style="border: 1px solid #e8e8e8; width: 80%;">
			<div class="Panel_contents__f7025 Panel_fill-scroll__8271f">

				<div class="ProductList_contents__eUxgq" aria-label="상품 리스트">

					<c:forEach var="playList" items="${playList}" varStatus="stat">
						<a role="link" tabindex="0" class="TicketItem_ticketItem__">
							<div class="TicketItem_imageWrap__iVEOw">
								<img src="${playList.mainImg}" data-nimg="fill"
									class="TicketItem_image__U6xq6"
									sizes="(max-width: 1023px) 104px, 25vw"
									style="position: absolute; height: 100%; width: 100%; inset: 0px; color: transparent;">
									
							</div>
							<ul class="TicketItem_contentsWrap__xCe3A">
								<li class="TicketItem_goodsName__Ju76j">${playList.showName}</li>
								<li class="TicketItem_placeName__ls_9C">${playList.detailImg}</li>
								<li class="TicketItem_playDate__5ePr2">${playList.startDate}~${playList.endDate}</li>
							</ul>
						</a>
					</c:forEach>

				</div>
			</div>

		</section>
	</article>
	<!-- 전체 리스트  -->


</main>

<script>
document.getElementById('listBtn').addEventListener('click', function() {
    document.getElementById('playList').scrollIntoView({ 
        behavior: 'smooth' 
    });
});
</script>




<!-- 지도  -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a0be9147034cf9af1ad5186abfceb5fb"></script>
<script>
	let mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
		center : new kakao.maps.LatLng(35.83800509167648, 127.83665269918357), // 지도의 중심좌표
		level : 13, // 지도의 확대 레벨
		draggable : false, // 드래그 비활성화
		zoomable : false // 줌 비활성화
	};

	let map = new kakao.maps.Map(mapContainer, mapOption), customOverlay = new kakao.maps.CustomOverlay({});

	let polygons = [];
	let areas = []; // 지역 정보를 저장할 배열 초기화

	init("../resources/sido.json") // json세팅

	// 폴리곤 생성
	function init(path) {
		areas = []; // 지역 정보를 저장할 배열 초기화

		//path 경로의 json 파일 파싱
		$.getJSON(path, function(geojson) {
			var units = geojson.features; // json key값이 "features"인 것의 value를 통으로 가져온다.

			$.each(units, function(index, unit) { // 1개 지역씩 꺼내서 사용. val은 그 1개 지역에 대한 정보를 담는다
				var coordinates = []; //좌표 저장할 배열
				var name = unit.properties.SIG_KOR_NM; // 지역 이름
				var cd_location = unit.properties.SIG_CD;

				coordinates = unit.geometry.coordinates; // 1개 지역의 영역을 구성하는 다각형의 모든 좌표 배열

				var ob = new Object();
				ob.name = name;
				ob.path = [];
				ob.location = cd_location;

				$.each(coordinates[0], function(index, coordinate) {
					ob.path.push(new kakao.maps.LatLng(coordinate[1],
							coordinate[0]));
				});

				areas[index] = ob;
			});

			// 지도에 영역데이터를 폴리곤으로 표시
			for (var i = 0, len = areas.length; i < len; i++) {
				displayArea(areas[i]);
			}
		});
	}

	function displayArea(area) {

		var polygon = new kakao.maps.Polygon({
			map : map,
			path : area.path,
			strokeWeight : 2,
			strokeColor : '#004c80',
			strokeOpacity : 0.8,
			fillColor : '#fff',
			fillOpacity : 0.7
		});
		polygons.push(polygon);

		kakao.maps.event.addListener(polygon, 'mouseover',
				function(mouseEvent) {
					polygon.setOptions({
						fillColor : '#09f'
					});
					customOverlay.setContent('<div class="area">' + area.name
							+ '</div>');
					customOverlay.setPosition(mouseEvent.latLng);
					customOverlay.setMap(map);
				});

		kakao.maps.event.addListener(polygon, 'mousemove',
				function(mouseEvent) {
					customOverlay.setPosition(mouseEvent.latLng);
				});

		kakao.maps.event.addListener(polygon, 'mouseout', function() {
			polygon.setOptions({
				fillColor : '#fff'
			});
			customOverlay.setMap(null);
		});

		/**
			지도의 구역을 누르면 옆 div에 그 지역의 진행중인 연극 공연 3개 정도 보여주기
		*/
		kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
			let areaName = area.name;
			console.log(areaName," 입니다");
			
			let hallAddr = areaName;
			
			let data = {
				hallAddr: hallAddr
			}
			
			$.ajax({
			    url: "/play/playRecList",
			    contentType: "application/json;charset=utf-8",
			    data: JSON.stringify(data),
			    type: "post",
			    dataType: "json",
			    beforeSend: function(xhr) {
			        xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			    },
			    success: function(result) {
			        console.log("result >> ", result);
			        
			        let htmlContent = "";
						
			        // 결과가 배열인 경우에만 처리
			        if (Array.isArray(result) && result.length > 0) {
			            // 최대 3개 항목만 처리
			            result.slice(0, 3).forEach(item => {
			                htmlContent += '<div style="width:30%; height:100%; margin-top:20px;">';
			                htmlContent += '<a role="link">';
			                htmlContent += '<img src="' + item.mainImg + '" class="recImg" >';
			                htmlContent += '<ul class="TicketItem_contentsWrap__xCe3A" style="align-items: center;">';
			                htmlContent += '<li class="TicketItem_goodsName__Ju76j">' + item.showName + '</li>';
			                htmlContent += '<li class="TicketItem_placeName__ls_9C">' + item.detailImg + '</li>';
			                htmlContent += '<li class="TicketItem_playDate__5ePr2" style="display: -webkit-box;">' + item.startDate + ' ~ ' + item.endDate + '</li>';
			                htmlContent += '</ul>';
			                htmlContent += '</a>';
			                htmlContent += '</div>';
			            });

			            document.getElementById("playRec").innerHTML = htmlContent;
					}else{
			            document.getElementById("playRec").innerHTML = "<h1 style='font-size:25px;'>지금 진행중인 연극 공연 내역이 없습니다.</h1>";
					}
				}


			});

		}); 
	}
</script>


<script>
	/**
	 * 인기차트 슬라이드 쇼 Swiper 
	 */
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
			nextEl : '.swiper-button-next', // 다음 버튼 클래스명
			prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
		},
		mousewheel : true, // 마우스 휠로 슬라이드 이동 가능
	});
</script>
