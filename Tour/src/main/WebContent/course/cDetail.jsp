<%@page import="model.CourseDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	CourseDTO dto = (CourseDTO) request.getAttribute("course");
	String num = (String) request.getAttribute("num");
	int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행길</title>
<!-- style -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<style type="text/css">
.besth {
	margin: 18px;
}

.besth>.h4 {
	margin-top: 5px;
}

.cDetail {
	height: 80px;
	border: 1px solid purple;
	border-radius: 5px;
	color: gray;
	/* background-color: rgb(0,0,0,0.05);*/
}

body {
	height: 100%;
	position: relative;
}

.wrap {
	padding-bottom: 140px;
}

.footer {
	position: absolute;
	height: 120px;
	width: 100%;
	bottom: 0;
}

a {
	text-decoration: none !important;
	color: gray !important;
}

a:hover {
	color: #6f42c1 !important;
}

.d-flex>img {
	width: 60px;
}

.getarea {
	font-size: 20px;
	font-weight: bold;
	color: gray;
}

.p-box>p {
	margin-left: 20px;
	margin-right: 20px;
}

.levelline {
	margin-top: 10px;
}

.fw-normal {
	color: gray;
	margin-top: 50px;
}

.besth>h3 {
	letter-spacing: 3px;
	color: #6f42c1;
}

.text_small {
	font-size: 12px;
	margin-bottom: 10px;
	opacity: 0.5;
}

.xxx>img {
	width: 5%;
	height: 5%;
}
</style>
<!-- script -->
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<div class="wrap">
		<div class="container">
			<div class="pricing-header p-3 pb-md-4 mx-auto text-center">
				<h3 class="fw-normal mb-4">상세 정보</h3>
			</div>

			<div class="cDetail">
				<div class="lh-1 besth">
					<h1 class="h6 mb-0 lh-1">추천 코스</h1>
					<h3 class="h4 mb-0"><%=dto.getCname()%></h3>
				</div>
			</div>
			<div class="my-3 p-3 bg-body">
				<h6 class="border-bottom pb-2 mb-0 getarea"><%=dto.getCarea()%></h6>
				<div class="d-flex text-muted pt-3 p-box xxx">
					<img src="../resources/img/pref_o.png">
					<p class="pb-3 mb-0 small lh-sm border-bottom">
						<small class="d-block text_small">코스 정보</small>
							<span class="gettext"> <%=dto.getCcontent()%>
						</span>
					</p>
				</div>
				<div class="d-flex text-muted levelline">
					<div class="d-flex text-muted pt-3 p-box">
						<img src="../resources/img/level_o.png">
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<small class="d-block text_small">난이도</small>
							<span><%=dto.getClevel()%></span>
						</p>
					</div>
					<div class="d-flex text-muted pt-3 p-box">
						<img src="../resources/img/length_o.png">
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<small class="d-block text_small">총 길이</small>
							<span><%=dto.getCleng()%></span>
						</p>
					</div>
					<div class="d-flex text-muted pt-3 p-box">
						<img src="../resources/img/length_o.png">
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<small class="d-block text_small">예상 소요 시간</small>
							<span><%=dto.getCtime()%></span>
						</p>
					</div>
				</div>
				<div class="d-flex text-muted pt-3">
					<div class="d-flex text-muted pt-3 p-box">
						<img src="../resources/img/water_o.png">
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<small class="d-block text_small">식수 보급처</small>
							<%=dto.getCopt()%>
						</p>
					</div>
				</div>
				<div class="d-flex text-muted pt-3">
					<div class="d-flex text-muted pt-3 p-box">
						<img src="../resources/img/toilet_o.png">
						<p class="pb-3 mb-0 small lh-sm border-bottom">
							<small class="d-block text_small">화장실 위치</small>
							<span><%=dto.getCtoi()%></span>
						</p>
					</div>
				</div>
				<small class="d-block text-end mt-3"><a onclick="history.back(-1)">목록으로 돌아가기</a></small>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>