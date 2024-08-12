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
		</div>
		

	</div>
</div>

</body>
</html>
