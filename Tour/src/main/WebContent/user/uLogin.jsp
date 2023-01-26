<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   if(session.getAttribute("id") != null){
      JSFunction.alertLocation(response, "잘못된 접근입니다.", "../main/mMain.jsp"); 
   }
%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<!-- style -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/uLogin.css">
<style type="text/css">
	body{
	   background-image:url("../resources/bg/main_bg_img0.jpg");
	}
</style>
<!-- script -->
</head>
<body class="text-center">
   <jsp:include page="../include/header_main.jsp" />
   <div class="container ctbody">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <form action="/uLogin.us" method="post" id="frm" name="frm">
               <h2>로그인</h2>
               <div class="form-floating mb-3">
                  <input type="text" class="frm_ctrl" id="uid" name="uid" placeholder="아이디" required>
               </div>
               <div class="form-floating mb-3">
                  <input type="password" class="frm_ctrl" id="upw" name="upw" placeholder="비밀번호" required>
               </div>
               <hr>
               <div class="cagroup">
                  <button type="submit" class="w-100 btn btn-lg btn-block Ca_button mb-2">로그인</button>
                  <button type="button" class="w-100 btn btn-lg btn-block Ca_button" onclick="location.href='/uJoin.us'">회원가입</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <jsp:include page="../include/footer_main.jsp"/>
</body>
</html>