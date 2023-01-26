<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   if(session.getAttribute("id") != null){
      JSFunction.alertLocation(response, "잘못된 접근입니다.", "../main/mMain.jsp"); 
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>회원 취향 옵션</title>
<!-- style -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/uOption.css">
<style type="text/css">
   body {
		background-image: url(../resources/bg/main_bg_img22.jpg);
		background-size: cover;
   }
</style>
<!-- script -->
<script type="text/javascript" src="../resources/js/user.js"></script>
</head>
<body>
   <jsp:include page="../include/header_main.jsp" />
   <div class="container">   
      <div class="input_option">
         <h4 class="join_title">회원가입</h4>
         <h4 class="join_text">당신의 취향을 선택해 주세요</h4>
         <form action="/uResult.us" method="post" id="frm" name="frm">
            <input type="hidden" id="id" name="id" value="<%= request.getParameter("id") %>">
            <input type="hidden" id="pw" name="pw" value="<%= request.getParameter("pw") %>">
            <input type="hidden" id="name" name="name" value="<%= request.getParameter("name") %>">
            <input type="hidden" id="tel" name="tel" value="<%= request.getParameter("tel") %>">
            <input type="hidden" id="category" name="category" value="<%= request.getParameter("category") %>">
            <input type="hidden" id="keyword" name="keyword" value="<%= request.getParameter("keyword") %>">
            <input type="hidden" id="area" name="area" value="<%= request.getParameter("area") %>">
            <input type="hidden" id="level" name="level" value="<%= request.getParameter("level") %>">
            <div class="btn">
               <h5 class="btn_title1">편의시설</h5>
               <button class="btn_option" type="button" id="chkDrink" name="chkDrink" value="chkDrink" onclick="chkOption(this)">식수</button>
               <input type="hidden" id="drink" name="drink" value="0">
               <button class="btn_option" type="button" id="chkToilet" name="chkToilet" value="chkToilet" onclick="chkOption(this)">화장실</button>
               <input type="hidden" id="toilet" name="toilet" value="0">
               <button class="btn_option" type="button" id="chkMart" name="chkMart" value="chkMart" onclick="chkOption(this)">매점</button>
               <input type="hidden" id="mart" name="mart" value="0">
            </div>
            <div class="slidecontainer">
               <h5 class="btn_title">
                  길이 ( <span id="value" name="length"></span> km)
                  <input type="hidden" id="length" name="length" value="50">
               </h5>
               <input type="range" min="0" max="100" step="1" value="50" class="form_range" id="customRange1">
               <label for="customRange3" class="form-label">0</label>
               <label for="customRange3" class="form_label-2">100 +</label>
            </div>
            <script type="text/javascript">
               var slider = document.getElementById("customRange1");
               var output = document.getElementById("value");
               output.innerHTML = slider.value;
               
               slider.oninput = function() {
                  output.innerHTML = this.value;
                  document.getElementById("length").value = this.value;
               }
            </script>
            <div class="slidecontainer">
               <h5 class="btn_title">
                  시간 ( <span id="value2" name="time"></span> 분)
                  <input type="hidden" id="time" name="time" value="60">
               </h5>
               <input type="range" min="0" max="360" step="1" value="60"class="form_range" id="customRange2">
               <label for="customRange3" class="form-label">0</label>
               <label for="customRange3" class="form_label-2">360 +</label>
            </div>
            <script type="text/javascript">
               var slider2 = document.getElementById("customRange2");
               var output2 = document.getElementById("value2");
               output2.innerHTML = slider2.value;
               
               slider2.oninput = function() {
                   output2.innerHTML = this.value;
                  document.getElementById("time").value = this.value;
               }
            </script>
            <div class="cagroup">
               <button type="button" class="Ca_button" onclick="history.back(-1);">&lt;&nbsp;&nbsp; 이전</button>
               <button type="submit" class="Ca_button">완료&nbsp;&nbsp;&gt;</button>
            </div>
         </form>
      </div>
   </div>
   <jsp:include page="../include/footer_main.jsp"/>
</body>
</html>