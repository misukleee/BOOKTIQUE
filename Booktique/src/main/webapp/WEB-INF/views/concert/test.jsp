<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js" />
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<style>
.swiper {
	width: 100%;
	height: 100%;
}
.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
}
.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>

<!-- Swiper -->
<div class="swiper mySwiper">
	<div class="swiper-wrapper">
		<div class="swiper-slide">Slide 1</div>
		<div class="swiper-slide">Slide 2</div>
		<div class="swiper-slide">Slide 3</div>
		<div class="swiper-slide">Slide 4</div>
		<div class="swiper-slide">Slide 5</div>
		<div class="swiper-slide">Slide 6</div>
		<div class="swiper-slide">Slide 7</div>
		<div class="swiper-slide">Slide 8</div>
		<div class="swiper-slide">Slide 9</div>
	</div>
	<div class="swiper-button-next"></div>
	<div class="swiper-button-prev"></div>
</div>

<script>
<!-- Initialize Swiper -->
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
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
</script>