<%@page import="model.CourseDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String area = "n";
   String keyword = "n";
   if(request.getAttribute("area") != null && request.getAttribute("area") != "n"){
      area = String.valueOf(request.getAttribute("area"));
   }
   if(request.getAttribute("keyword") != null && request.getAttribute("keyword") != "n"){
      keyword = String.valueOf(request.getAttribute("keyword"));
   }
   
   int pageNum = 0;
   int total_record = 0;
   int total_page = 0;
   List<CourseDTO> courseList = (List<CourseDTO>)request.getAttribute("list");
   if(request.getAttribute("total_record") != null){
      total_record = ((Integer) request.getAttribute("total_record"));
   }
   if(request.getAttribute("pageNum") != null){
      pageNum = ((Integer) request.getAttribute("pageNum"));
   }
   if(request.getAttribute("total_page") != null){
      total_page = ((Integer) request.getAttribute("total_page"));
   }
   int start = 1;
   int end = 10;
   if(pageNum > 1){
      start = ((pageNum / 10) * 10) + 1;
      if(pageNum % 10 == 0){
         start = ((pageNum / 10) * 10) - 9;
      }
      end = start + 9;
      if(end > total_page){
         end = total_page;
      }
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행길</title>
<!-- style -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<style type="text/css">
   body{
      height:100%;
      position: relative;
   }
   .wrap{
      padding-bottom: 140px;
   }
   .cDetail {
      height: 80px;
      background-color: #6f42c1;
      border-radius: 10px;
      padding: 20px;
   }
   .footer{
      position: absolute;
      height: 120px;
      width: 100%;
      bottom:0;
   }
   a{
      text-decoration: none !important;
      color: gray !important;
   }
   a:hover{
      color:#6f42c1 !important;
   }
   small{
      color: gray !important;
   }
   input[type=radio]{
      accent-color: #6f42c1 !important;
   }
   .btn_option {
      width: 90px;
      height: 30px;
      border: 1px solid gray !important;
      border-radius: 5px;
      font-size: 15px;
      background-color: transparent;
      color: gray;
   }
   .btn_option:hover {
      color: #6f42c1;
      border-color: #6f42c1 !important;
   }
   
   .fw-normal {
      margin-top: 10px;
   }
   hr {
   margin-bottom: 20px !important;
   }
   .pnum{
   margin-top: 40px;
   }
   h3 {
   color: gray;
   }
   
</style>
<!-- script -->
</head>
<body>
   <jsp:include page="../include/header.jsp" />
   <form id="selectFrm" name="selectFrm" action="/cList.co" method="post">
      <div class="container">
         <div>
            <span id="selectArea">
               <input type="radio" name="area" value="n" <% if(area.equals("n")){ %>checked<% } %>><small>&nbsp;전체&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="서울" <% if(area.equals("서울")){ %>checked<% } %>><small>&nbsp;서울&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="경기" <% if(area.equals("경기")){ %>checked<% } %>><small>&nbsp;경기&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="인천" <% if(area.equals("인천")){ %>checked<% } %>><small>&nbsp;인천&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="세종" <% if(area.equals("세종")){ %>checked<% } %>><small>&nbsp;세종&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="대전" <% if(area.equals("대전")){ %>checked<% } %>><small>&nbsp;대전&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="충남" <% if(area.equals("충남")){ %>checked<% } %>><small>&nbsp;충남&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="충북" <% if(area.equals("충북")){ %>checked<% } %>><small>&nbsp;충북&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="광주" <% if(area.equals("광주")){ %>checked<% } %>><small>&nbsp;광주&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="전남" <% if(area.equals("전남")){ %>checked<% } %>><small>&nbsp;전남&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="전북" <% if(area.equals("전북")){ %>checked<% } %>><small>&nbsp;전북&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="대구" <% if(area.equals("대구")){ %>checked<% } %>><small>&nbsp;대구&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="경북" <% if(area.equals("경북")){ %>checked<% } %>><small>&nbsp;경북&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="부산" <% if(area.equals("부산")){ %>checked<% } %>><small>&nbsp;부산&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="울산" <% if(area.equals("울산")){ %>checked<% } %>><small>&nbsp;울산&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="경남" <% if(area.equals("경남")){ %>checked<% } %>><small>&nbsp;경남&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="강원" <% if(area.equals("강원")){ %>checked<% } %>><small>&nbsp;강원&nbsp;&nbsp;</small>
               <input type="radio" name="area" value="제주" <% if(area.equals("제주")){ %>checked<% } %>><small>&nbsp;제주</small>
            </span>
         </div>
         <div>
            <span id="selectArea">
               <input type="radio" name="keyword" value="n" <% if(area.equals("n")){ %>checked<% } %>><small>&nbsp;전체&nbsp;&nbsp;</small>
               <input type="radio" name="keyword" value="자연" <% if(keyword.equals("자연")){ %>checked<% } %>><small>&nbsp;자연&nbsp;&nbsp;</small>
               <input type="radio" name="keyword" value="체험" <% if(keyword.equals("체험")){ %>checked<% } %>><small>&nbsp;체험&nbsp;&nbsp;</small>
               <input type="radio" name="keyword" value="전통" <% if(keyword.equals("전통")){ %>checked<% } %>><small>&nbsp;전통&nbsp;&nbsp;</small>
               <input type="radio" name="keyword" value="종교" <% if(keyword.equals("종교")){ %>checked<% } %>><small>&nbsp;종교&nbsp;&nbsp;</small>
               <input type="radio" name="keyword" value="도시" <% if(keyword.equals("도시")){ %>checked<% } %>><small>&nbsp;도시&nbsp;&nbsp;</small>
            </span>
         </div>
         <div style="text-align: right;">
            <button class="btn_option" type="submit">검색</button>
         </div>
      </div>
   </form>
   <div class="wrap">
      <div class="container">
      <hr color="gray">
         <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
            <h3 class="fw-normal mb-4">검색한 여행길</h3>
            <small class="text-muted mb-1">선택한 지역에 여행길 정보가 <b style="color: #6f42c1 !important"><%= total_record %></b> 개 준비되어 있습니다.</small><br>
            <small class="text-muted mb-1">마음에 드는 길 정보의 상세보기를 통해 경로, 길이, 예상 시간, 편의시성 등의 세부정보를 확인하실 수 있습니다.</small>
         </div>
         <%   if(total_record == 0){ %>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
               <div class="col mx-auto">
                  <p>코스가 존재하지 않습니다.</p>
               </div>
            </div>
         <%   } else {   %>
            <div class="row row-cols-md-5 cols-md-1 g-3">
               <%   
                  for(int i = 0; i < courseList.size(); i++){ 
                     CourseDTO course = (CourseDTO) courseList.get(i);
               %>
                     <div class="col">
                        <div class="card shadow-sm">
                           <img src="../resources/images/<%= (int)(Math.random() * 100) %>.jpg" alt="x">
                           <div class="card-body">
                              <p class="card-text text-truncate" data-toggle="tooltip" title="<%= course.getCadit()%>" style="font-size: 15px; color: gray;"><%= course.getCadit() %></p>
                              <div class="d-flex justify-content-between align-items-center">
                                 <div class="btn-group text-truncate">
                                    <small class="text-muted text-truncate" data-toggle="tooltip" title="<%= course.getCname()%>"><%= course.getCname() %></small>
                                 </div>
                              </div>
                              <button class="btn_option" onclick="location.href='/cDetail.co?cno=<%= course.getCno()%>&pageNum=<%= pageNum%>'" style="float: right;">상세보기</button>
                           </div>
                        </div>
                     </div>
               <%   } %>
            </div>
         <%   } %>
      </div>
      <!-- 페이징 -->
      <div align="center" class="pnum">
         <%   if(pageNum > 1){ %>
            <a href="/cList.co?pageNum=1&area=<%= area %>&keyword=<%= keyword %>">첫페이지&nbsp;&nbsp;</a>
         <%   } %>
         <%   if(pageNum > 10){ %>
            <a href="/cList.co?pageNum=<%= start - 10 %>&area=<%= area %>&keyword=<%= keyword %>">이전페이지&nbsp;&nbsp;</a>
         <%   } %>
         <%   for(int i = start; i <= end; i++){ %>
            <%   if(i > total_page) break; %>
            <%   if(start < total_page){ %>
               <a href="/cList.co?pageNum=<%= i %>&area=<%= area %>&keyword=<%= keyword %>">
                  <% if(pageNum == i){ %>
                        <font color='#6f42c1'><b> [<%= i %>]</b></font>
                  <%   } else { %>   
                        <font color='gray'> [<%= i %>]</font>
                  <%   } %>
               </a>
            <%   }   %>
         <%   } %>
         <%   if(start == total_page){%>
            <font color='red'><b> [<%= start %>]</b></font>
         <%   }   %>
         <%   if(pageNum < total_page - 10){ %>
            <a href="/cList.co?pageNum=<%= end + 1 %>&area=<%= area %>&keyword=<%= keyword %>">&nbsp;&nbsp;다음페이지</a>
         <%   } %>
         <%   if(pageNum < total_page){ %>
            <a href="/cList.co?pageNum=<%= total_page %>&area=<%= area %>&keyword=<%= keyword %>">&nbsp;&nbsp;마지막페이지</a>
         <%   } %>
      </div>
   </div>
   <jsp:include page="../include/footer.jsp" />
</body>
</html>