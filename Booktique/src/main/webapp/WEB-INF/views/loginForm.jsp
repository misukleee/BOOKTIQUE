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
    
    <title>BOOKTIQUE - 로그인</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/resources/css/booktique.css" />
</head>
<body>
<div id="container" class="container login">
	<div class="loginWrap">
		<div class="loginLogo">
			<a href="https://www.interpark.com/">
				<h1 class="logo">
					<span>Booktique</span>
				</h1>
			</a>
		</div>
		
		<form id="formAuthentication" action="/login" method="post">
		    <!-- CSRF Token -->
		    <sec:csrfInput/>
		    <!-- 아이디 입력 필드 -->
		    <input type="text" id="username" name="username" placeholder="아이디" />
		    <!-- 비밀번호 입력 필드 -->
		    <input type="password" id="password" name="password" placeholder="비밀번호" />
		    <!-- 로그인 버튼 -->
		    <button type="submit">로그인</button>
		</form>

	</div>
</div>

</body>
</html>
