<%@page import="model.UserDTO"%>
<%@page import="model.SelectDTO"%>
<%@page import="model.ReviewDTO"%>
<%@page import="java.util.List"%>
<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") == null){
		JSFunction.alertLocation(response, "잘못된 접근입니다.", "../main/mMain.jsp"); 
	}

	int pageNum = 0;
	int total_record = 0;
	int total_page = 0;
	List selectList = (List)request.getAttribute("list");
	UserDTO user = (UserDTO)request.getAttribute("udto");
	
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
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취향길</title>
<link rel="stylesheet" href="../resources/css/pPref.css">
</head>
<style>
	*{
	   margin:none;
	}
	button{background: inherit ; border:none;}
	
	.course_box>h3{
	   margin-top:70px;
	   margin-left:-390px;
	   margin-bottom: -30px;
	}
	.course_box>h3{
	   margin-top:70px;
	   margin-left:80px;
	   margin-bottom: -30px;
	}
	.btn_add{
	   height:40px;
	   margin-top:-180px;
	   margin-left:-400px;
	}
	.course_name{
	   font-size: 20px;
	   background-color:#6f42c1;
	   color:#fff;
	   border-radius:5px;
	   height: 45px;
	   width:110%;
	   margin-top: 80px;
	   padding-top:8px;
	}
	
	.row{
	   border-bottom:1px solid #6f42c1;
	   width:127%;
	   height: 80px;
	   font-size: 16px;
	   float:left;
	   margin-left:10px;
	}
	.col{
	   display:flex;
	   align-items: center;
	   justify-content: center; 
	}
	.col>img{
	   width:30px;
	   height:30px;   
	}
	.btngroup{
	   width: 150px;
	   margin-left:836px;
	   margin-top:-45px;
	   align-items: center;
	   display: flex;
	   flex-wrap: nowrap;
	}
	.btn_blue{
	   height: 45px;
	   button-border:1px solid #6f42c1;
	}
	
	.btn_blue:hover{
	   button-background-color: #6f42c1;
	   opacity: 0.75;
	}
	
	.modify{
	   margin-top: 150px;
	   margin-bottom: 40px;
	}
	.form-control{
	   margin-top:20px;
	}
	.frist_text{
	   margin-top:40px;
	}
</style>
<body>
   <jsp:include page="../include/header.jsp"/>
      
      <div class="contrainer">   
         <div class="text-center course_box">
            <h3>내 취향 리스트</h3>
            <%	if(!selectList.isEmpty()){ %>
	            <%
	            	for(int i = 0; i < selectList.size(); i++){
	            		SelectDTO select = (SelectDTO) selectList.get(i);
	            %>
	            <div class="course_name">해오름길</div>            
	            <div class="row">
	                <div class="col"><img src="../resources/img/area_o.png"><%= select.getArea() %></div>
	                <div class="col"><img src="../resources/img/pref_o.png">&nbsp;<%= select.getCategory() %></div>
	                <div class="col"><img src="../resources/img/pref_o.png">&nbsp;<%= select.getKeyword() %></div>
	                <div class="col"><img src="../resources/img/level_o.png">&nbsp;<%= select.getLevel() %></div>
	                <div class="col"><img src="../resources/img/length_o.png">&nbsp;<%= select.getLength() %></div>
	                <div class="col"><img src="../resources/img/time_o.png">&nbsp;<%= select.getTime() %></div>
	                <div class="col"><img src="../resources/img/water_o.png">&nbsp;<%= select.getWater() %></div>
	                <div class="col"><img src="../resources/img/toilet_o.png">&nbsp;<%= select.getToilet() %></div>
	                <div class="col"><img src="../resources/img/mart_o.png">&nbsp;<%= select.getMart() %></div>
	            </div>
	            <div class="btngroup">
	               <button class="btn btn-outline-secondary btn_blue" type="button">수정</button>         
	               <button class="btn btn-outline-secondary btn_blue" type="button">삭제</button>   
	               <button class="btn btn-outline-primary btn_add" type="button">추가</button>   
	            </div>
	            <br><br>
            	<%	} %>
            <%	} else { %>
            	<div class="row">
	                <div class="col"><p>취향 데이터가 존재하지 않습니다.</p></div>
	            </div>
           	<%	} %>
         </div>

            <div class="input-form col-md-2 mx-auto modify">
               <form action="#" method="post" id="frm" name="frm">
                  <h1 class="h3 mb-3 fw-normal">개인정보 변경</h1>
                  <div class="mb-3">
                     <input type="text" class="form-control frist_text" id="upw" placeholder="비밀번호">
                  </div>
                  <div class="mb-3">
                     <input type="password" class="form-control" id="chkpw" placeholder="비밀번호 확인">
                  </div>
                  <div class="mb-3">
                      <input type="text" id="tel" name="tel" class="form-control" placeholder=" - 없이 전화번호" maxlength="11" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="<%= user.getUtel() %>">
                     <div class="invalid-feedback">전화번호를 입력해주세요.</div>
                  </div>
                  <button class="w-10 btn btn-primary" type="button">정보 변경</button>
               </form>
            </div>
         </div>
   
   <jsp:include page="../include/footer.jsp"/>
</body>
</html>