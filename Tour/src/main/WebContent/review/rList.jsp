<%@page import="model.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   String leng = "n";
   String keyword = "n";
   if(request.getAttribute("leng") != null || request.getAttribute("leng") != "n"){
	   leng = String.valueOf(request.getAttribute("leng"));
   }
   if(request.getAttribute("keyword") != null || request.getAttribute("keyword") != "n"){
      keyword = String.valueOf(request.getAttribute("keyword"));
   }
   
   int pageNum = 0;
   int total_record = 0;
   int total_page = 0;
   List reviewList = (List) request.getAttribute("rlist");
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
<title>리뷰 목록</title>
<!-- style -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/review.css">
<!-- script -->
<script type="text/javascript" src="../resources/js/review.js"></script>
</head>
<style>
.wrap{
	padding-bottom: 50px;
}
</style>
<body>
	<jsp:include page="../include/header.jsp" />
	<div class="wrap">
		<div class="py-3 text-center">
			<img src="../resources/images/41.jpg" alt="x" class="rounded-circle flex-shrink-0">
			<h3>리뷰 목록</h3>
			<p class="lead">여러 사용자들이 작성한 리뷰들을 볼 수 있습니다</p>
		</div>
		<%	if(session.getAttribute("id") != null){ %>
			<div class="wr_btn">
				<a class="btn btn-outline-primary mx-5 btn-sm" href="/rWrite.re" role="button">글쓰기</a>
			</div>
		<%	} %>
		<%	if(total_record == 0){ %>
				<div class="list-group w-800">
					<div class="d-flex gap-2 w-100 flex-column">
						<h6 class="mb-1 mx-auto"><b>게시물이 존재하지 않습니다.</b></h6>
					</div>
				</div>
		<%	} else { %>
			<div class="list-group w-800">
				<%
					for(int i = 0; i < reviewList.size(); i++){
						ReviewDTO review = (ReviewDTO) reviewList.get(i);
				%>
						<a href="/rView.re?rbno=<%= review.getRbno() %>" class="list-group-item list-group-item-action d-flex gap-3 py-3" aria-current="true">
							<img src="<%= request.getContextPath()%>/uploads/<%= review.getSimgData()%>" alt="X" class="rounded-circle flex-shrink-0">
							<div class="d-flex gap-2 w-100 justify-content-between flex-column">
								<h6 class="mb-1"><b><%= review.getRid() %></b></h6>
								<p class="mb-0 opacity-75"><%= review.getRtitle() %></p>
							</div>
							<small class="opacity-50 text-nowrap"><%= review.getRegDate() %></small> 
						</a>
				<% } %>
			</div>
		<% } %>
      <!-- 페이징 -->
      <div align="center" class="pnum">
         <%   if(pageNum > 1){ %>
            <a href="/rList.re?pageNum=1&leng=<%= leng%>&keyword=<%= keyword%>">첫페이지&nbsp;&nbsp;</a>
         <%   } %>
         <%   if(pageNum > 10){ %>
            <a href="/rList.re?pageNum=<%= start - 10 %>&leng=<%= leng%>&keyword=<%= keyword%>">이전페이지&nbsp;&nbsp;</a>
         <%   } %>
         <%   for(int i = start; i <= end; i++){ %>
            <%   if(i > total_page) break; %>
            <%   if(start < total_page){ %>
               <a href="/rList.re?pageNum=<%= i %>&leng=<%= leng%>&keyword=<%= keyword%>">
                  <% if(pageNum == i){ %>
                        <font color='#6f42c1'><b> [<%= i %>]</b></font>
                  <%   } else { %>   
                        <font color='gray'> [<%= i %>]</font>
                  <%   } %>
               </a>
            <%   }   %>
         <%   } %>
         <%   if(start == total_page){ %>
            <font color='red'><b> [<%= start %>]</b></font>
         <%   }   %>
         <%   if(pageNum < total_page - 10){ %>
            <a href="/rList.re?pageNum=<%= end + 1 %>&leng=<%= leng%>&keyword=<%= keyword%>">&nbsp;&nbsp;다음페이지</a>
         <%   } %>
         <%   if(pageNum < total_page){ %>
            <a href="/rList.re?pageNum=<%= total_page %>&leng=<%= leng%>&keyword=<%= keyword%>">&nbsp;&nbsp;마지막페이지</a>
         <%   } %>
      </div>
   </div>
   <jsp:include page="../include/footer.jsp" />
</body>
</html>