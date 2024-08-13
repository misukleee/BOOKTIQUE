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
    
    <title>BOOKTIQUE - 아이디 찾기</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/resources/css/booktique.css" />
</head>
<body>
<div id="container" class="container login">
	<div class="infoSearchWrap">
		<div class="infoSearchHeader">
			<h2>계정 찾기</h2>
		</div>
		
		<div class="infoSearchBody">
			<div class="searhTabWrap">
				<div class="tabWrap">
					<div class="tab current">
						<a href="/searchId">아이디 찾기</a>
					</div>
					<div class="tab">
						<a href="/searchPw">비밀번호 찾기</a>
					</div>
				</div>
			</div>
			
			
			
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
				</div>
				
				<c:if test="${not empty memberVO.memId}">
					<div class="bg-lighter rounded p-3 mt-5 mb-3">
					       <div class="result-group visible">
					           <p class="text-center m-0">회원님의 아이디는 <span class="fw-medium text-primary">&nbsp;${memberVO.memId}&nbsp;</span> 입니다.</p>
					       </div>
					</div>
				</c:if>
				<c:if test="${not empty message}">
					<div class="bg-lighter rounded p-3 mt-5 mb-3">
						<div class="result-group visible">
						    <p class="text-center m-0">${message}</p>
						</div>
					</div>
				</c:if>
				
				<div class="confirmWrap">
					<div class="activeButton">
						<button type="button" class="certBtn" onclick="javascript:getCertCheckNo('email'); return false;" style="display: none;">인증번호 받기</button>
						<button type="button" class="confirmBtn" style="" onclick="javascript:egsIncorp.sendEventEgs('id_search', 'find_id_email'); javascript:chkCertNo('email'); return false;">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>
