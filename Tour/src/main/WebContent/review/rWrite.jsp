<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") == null){
		JSFunction.alertLocation(response, "잘못된 접근입니다.", "../main/mMain.jsp"); 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 등록</title>
<!-- style -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/review.css">
<!-- script -->
<script type="text/javascript" src="../resources/js/review.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp" />
	<div class="py-3 text-center">
		<img src="../resources/images/1.jpg" alt="x" class="rounded-circle flex-shrink-0">
		<h3>리뷰 등록</h3>
		<p class="lead">사용자가 사진과 함께 리뷰를 작성할 수 있습니다</p>
	</div>
	<div class="col-md-7 col-lg-6 mx-auto">
		<form class="needs-validation" action="/rAdd.re" method="post" enctype="multipart/form-data">
			<input type="hidden" id="uid" name="uid" value="<%= session.getAttribute("id")%>">
			<div class="row g-3">
				<label for="title" class="form-label"><b>제목</b></label>
				<input type="text" class="form-control" id="title" name="title" required>
				<label for="content" class="form-label"><b>내용</b></label>
				<textarea rows="10" cols="8" id="content" name="content" required></textarea>
				<label for="file" class="form-babel"></label>
				<input type="file" class="form-control" id="imgData" name="imgData">
			</div>
			<button type="submit" class="btn btn-primary mt-3" id="submit" name="submit">리뷰 등록</button>
			<button type="button" class="btn btn-primary mt-3" id="reset" name="reset" onclick="history.back(-1);">뒤로가기</button>
		</form>
	</div>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>