<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Main</title>
<link rel="stylesheet" href="../resources/css/main.css">
<script type="text/javascript" src="../resources/js/review.js"></script>
</head>
<script>
	var index = 0; //이미지에 접근하는 인덱스
	window.onload = function() {
		slideShow();
	}

	function slideShow() {
		var i;
		var x = document.getElementsByClassName("slide1"); //slide1에 대한 dom 참조
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none"; //처음에 전부 display를 none으로 한다.
		}
		index++;
		if (index > x.length) {
			index = 1; //인덱스가 초과되면 1로 변경
		}
		x[index - 1].style.display = "block"; //해당 인덱스는 block으로
		setTimeout(slideShow, 4000); //함수를 4초마다 호출
	}
</script>
<body>
	<div class="cover">
		<img class="slide1" src="../resources/bg/main_bg_img1.jpg"> <img
			class="slide1" src="../resources/bg/main_bg_img24.jpg"> <img
			class="slide1" src="../resources/bg/main_bg_img3.jpg"> <img
			class="slide1" src="../resources/bg/main_bg_img23.jpg"> <img
			class="slide1" src="../resources/bg/main_bg_img13.jpg">
	</div>
	<div class="mainlogo">
		<img src="../resources/img/logo_w.png" alt="x">
	</div>
	<div class="menu">
		<ul>
			<% if (session.getAttribute("id") != null) { %>
				<li><a href="/pCate.pr">취향길</a></li>
			<% } %>
			<li><a href="/mInfo.ma">소개</a></li>
			<li><a href="/cList.co">여행길</a></li>
			<li><a href="/rList.re">후기 보기</a></li>

			<% if (session.getAttribute("id") != null) { %>
				<li><a href="/uLogout.us">로그아웃</a></li>
			<% } else { %>
				<li><a href="/tryLogin.us">로그인</a></li>
			<% } %>
		</ul>
	</div>
	<jsp:include page="../include/footer_main.jsp" />
</body>
</html>