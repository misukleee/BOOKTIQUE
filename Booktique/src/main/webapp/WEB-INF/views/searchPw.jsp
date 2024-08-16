<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="" />
    
    <title>계정 찾기 - BOOKTIQUE</title>
	
	<link href="/resources/css/fdfa608d464f1bb9.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/d9f4e75c2121ddb0.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/mf.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/7b65a34d28470be3.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/0c7ff060f4519b3e.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/common_search.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/header.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/search.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/resources/css/booktique.css" />
    
	<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
</head>
<body>

<div class="intCommonHeader" id="commonHeaderDom">  
    <div class="empty"></div>  
    <div class="headerInner">   
        <div class="inner">     
            <a class="main_logo" href="/main" style="font-weight: 700">
				<img class="main_logo_img" src="/resources/img/logo.png">
				Booktique
			</a> 
            <ul class="myMenu">       
                <li class="">
                    <a href="/login" id="btnLogin">로그인</a>
                </li>       
                <li class="">
                    <a href="/signUp">회원가입</a>
                </li>   
            </ul> 
        </div> 
    </div>
</div>

<form name="MemberMatchPwdForm" method=post action="/member/matchid.do" onSubmit="return false;">

	<div id="container" class="container">
		<div class="infoSearchWrap">
			<div class="infoSearchHeader">
				<div class="backButton">
					<button type="button" onclick="javascript:historyback();">뒤로가기</button>
				</div>
				<h2>계정 찾기</h2>
			</div>
			<div class="infoSearchBody">
				<div class="searhTabWrap">
					<div class="tabWrap">
						<div class="tab">
							<a href="/searchId">아이디 찾기</a>
						</div>
						<div class="tab current">
							<a href="/searchPw">비밀번호 찾기</a>
						</div>
					</div>
				</div>
				<div class="searchContentsWrapper">
					 
					<div class="searchContents current">
						<div class="contentsWrap">
							<div class="inner">
								<div class="searchDiv active">
									<p class="message">입력하신 이름과 이메일 주소가 회원 정보와 일치한 경우 이메일로 임시 비밀번호가 발송됩니다.</p>
									<div class="inputForm">
										<div class="inputStyle">
											<input id="inputEmailMemNm" type="text" class="searchInput" placeholder="이름">
											<button type="button" class="inputBtn btnDel">
												<span class="blind">삭제</span>
											</button>
										</div>
										<div class="inputStyle">
											<input id="inputEmail" type="text" class="searchInput" placeholder="이메일 주소">
											<button type="button" class="inputBtn btnDel">
												<span class="blind">삭제</span>
											</button>
										</div>
										<div class="errorMessage">
											<div class="message">해당 정보와 일치하는 사용자를 찾을 수 없습니다</div>  <!-- ${message} -->
										</div>
										<div class="confirmWrap">
											<div class="activeButton">
												<button type="button"
														class="certBtn"
														onclick="javascript:getCertCheckNo('email'); return false;">임시 비밀번호 받기</button>
											</div>
										</div>
									</div>
								</div>
									
								<div class="searchDiv">
									<div class="searchContentsWrapper" style="display: ">
										<h3>임시 비밀번호를<br>이메일로 발송하였습니다</h3>
										<div class="resultListWrap">
											<ul>
												<li class="items">
													<input type="radio" name="idlist" id="id_1" value="shj88315" data-memno="" checked="">
													<label for="id_1">
														<div class="id">shj88315@gmail.com</div>
													</label>
												</li>
											</ul>
										</div>
										<div class="bottomBtnWrap">
											<div class="textBubble" style="display:none;">
												<span>아이디를 선택해주세요</span>
											</div>
											<button type="button" class="basicBtn" onclick="javascript:sendMemId();">아이디 찾기</button>
											<button type="button" class="blueBtn" onclick="javascript:memLogin(); return false;">로그인</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</form>

</body>
</html>
