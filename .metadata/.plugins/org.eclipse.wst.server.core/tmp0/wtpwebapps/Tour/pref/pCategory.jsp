<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 선택</title>
<!-- style -->
<link rel="stylesheet" href="../resources/css/uCategory.css">
<!-- script -->
<script type="text/javascript" src="../resources/js/user.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
   body{
      background-image:url("../resources/bg/main_bg_img25.jpg");
   }
</style>
</head>
<body>
   <jsp:include page="../include/header_main.jsp" />
   <div class="container">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <h4 class="join_title">취향 선택</h4>
            <h4 class="join_text">당신의 취향을 선택해 주세요</h4>
            
            <form action="/pOpt.pr" method="post" name="frm">
               <div class="preference">
                  <span class="thema_text">| 장소</span>
                  <!-- <img src="../resources/img/area_w.png" alt="x" class="area_w" data-toggle="tooltip" title="장소"> -->
                  <select class="pre_select" name="category">                     
                      <option value="0">산</option>
                      <option value="1">바다</option>
                      <option value="2">강</option>
                      <option value="3">도심</option>
                      <option value="4">시골</option>
                      <option value="5">섬</option>
                      <option value="6">문화</option>
                      <option value="7">역사</option>
                      <option value="8">종교</option>
                      <option value="9">관광</option>
                  </select>
               </div>
               <div class="preference">
                  <span class="thema_text">| 테마</span>
                  <select class="pre_select" name="keyword">
                         <option value="자연">자연</option>
                         <option value="체험">체험</option>
                         <option value="전통">전통</option>
                         <option value="종교">종교</option>
                         <option value="도시">도시</option>
                  </select>
               </div>
               <div class="preference">
                  <span class="thema_text">| 지역</span>
                  <select class="pre_select" name="area">
                         <option value="서울">서울</option>
                         <option value="경기">경기</option>
                         <option value="인천">인천</option>
                         <option value="세종">세종</option>
                         <option value="대전">대전</option>
                         <option value="충남">충남</option>
                         <option value="충북">충북</option>
                         <option value="광주">광주</option>
                         <option value="전남">전남</option>
                         <option value="전북">전북</option>
                         <option value="대구">대구</option>
                         <option value="경북">경북</option>
                         <option value="부산">부산</option>
                         <option value="울산">울산</option>
                         <option value="경남">경남</option>
                         <option value="강원">강원</option>
                         <option value="제주">제주</option>
                  </select>
               </div>
               <div class="preference">
                  <span class="thema_text1">|난이도</span>
                  <select class="pre_select" name="level">
                         <option value="1">매우쉬움</option>
                         <option value="2">쉬움</option>
                         <option value="3">보통</option>
                         <option value="4">어려움</option>
                         <option value="5">매우어려움</option>
                  </select>
               </div>
               <div class="cagroup">
               <button type="button" class="Ca_button" onclick="history.back(-1)">&lt;&nbsp;&nbsp; 이전</button>
               <button type="submit" class="Ca_button">다음&nbsp;&nbsp; &gt;</button>
               </div>
            </form>
            
         </div>
      </div>
   </div>
   <jsp:include page="../include/footer_main.jsp"/>
</body>
</html>