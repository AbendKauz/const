<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입완료</title>
<!-- style -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<style>
	.box{
		background-color: white;
	   width:800px;
	   height:500px;      
	   margin:0 auto;
	   opacity: 0.75;
	   border-top-left-radius:20px;
	   border-radius:5px;
	   margin-top:10px;
	   position: relative;
	}
	.p1{
	   text-align:center;
	   font-size:20px;
	   padding-top:60px;
	   color:gray;
	   opacity: 0.8;
	}
	.p2{
	   padding-top:70px;
	   margin-left: 120px;
	}
	.p3{
	   padding-top:20px;
	   margin-bottom: 55px;
	}
	.p4{
	   border: 1px solid purple;
	   border-radius: 5px;
	   margin-bottom: 70px
	}
	.p5{
	   font-size: 18px;
	   text-align: center;
	   padding-top:60px;
	   padding-bottom:70px;
	   border-radius: 5px;
	}
	.s1{
	   margin-left: 130px;
	   color:#25a4cd;
	}
	.s2{
	   font-size: 18px;
	   opacity: 0.75;
	   display: flex;
	   justify-content: center;
	
	}
	
	.sm3{
		font-weight: bold;
		font-size: 50px;
		display: flex;
		justify-content: center;
	}
	
	#pref{
		border: none;
		color:#800080;
		text-align: center;
	}
	#pref:focus {outline: none;} /* outline 테두리 없애기 */
	.Ca_button{
	   color:gray;
	   width:146px;
	   height:45px;
	   background-color:gray;
	   border: 1px solid gray;
	   background-color: transparent;
	   border-radius: 5px;
	   font-size: 20px;
	   margin-top: 30px;
	}
	.Ca_button:hover{
	   background-color: #fff;
	   opacity: 0.7;
	   color:#6f42c1;
	}
	hr{
		margin: 100px auto;
	}
</style>
<!-- script -->
<script type="text/javascript" src="../resources/js/user.js"></script>
<script type="text/javascript">
	//XMLHttpRequest 객체 생성(XMLHttpRequest : 자바스크립트의 내장객체, 비동기통신을 위한 객체)
	let xhr = new XMLHttpRequest();
	
	//요청을 보낼 방식, url, 비동기여부 설정
	xhr.open('GET', 'http://localhost:5000/predict?uid=<%=request.getParameter("category")%>&area=<%=request.getParameter("area")%>&level=<%=request.getParameter("level")%>&length=<%=Double.parseDouble(request.getParameter("length"))%>&time=<%=Integer.parseInt(request.getParameter("time"))%>&water=<%=request.getParameter("drink")%>&toilet=<%=request.getParameter("toilet")%>&mart=<%=request.getParameter("mart")%>&keywork=<%=request.getParameter("keyword")%>', true);
				<%-- http://localhost:5000/predict?uid=<%=request.getParameter("category")%>&area=<%=request.getParameter("area")%>&level=<%=request.getParameter("level")%>&length=<%=request.getParameter("length")%>&time=<%=request.getParameter("time")%>&water=<%=request.getParameter("drink")%>&toilet=<%=request.getParameter("toilet")%>&mart=<%=request.getParameter("mart")%>&keywork=<%=request.getParameter("keyword")%> --%>
	//요청 전송
	xhr.send();
	
	//Callback
	xhr.onload = () => {
		let pref = document.getElementById("pref");
	    if (xhr.status == 200) {
	    	//success
	        console.log(xhr.response);
	        pref.value = xhr.response;
	        
	        // 취향 결과의 카테고리 처리
	        let chk = new XMLHttpRequest();
	        
	        // 요청을 보낼 방식, url, 비동기여부 설정
	        chk.open('GET', '/chkCourse.us?cours='+ xhr.response, true);
	        // 요청 전송
	        chk.send();
	        
	        // Callback
	        chk.onload = () => {
	        	let ckco = document.getElementById("chk");
	        	if(chk.status == 200){
	        		console.log("결과 : " + chk.response);
	        		ckco.value = chk.response;
	        	}else{
	        		// failed
	        	}
	        }
	        
	        
	    } else {
	        //failed
	    }
	}
	
	function submit2(frm){
		frm.action = "/cDetail.us";
		frm.submit();
		return true;
	}
</script>
</head>
<body>
   <jsp:include page="../include/header_result.jsp" />
   <div class="container">
   		<form id="frm" name="frm" action="/addPref.us" method="post">
   			<input type="hidden" id="id" name="id" value="<%= request.getParameter("id") %>">
            <input type="hidden" id="category" name="category" value="<%= request.getParameter("category") %>">
            <input type="hidden" id="area" name="area" value="<%= request.getParameter("area") %>">
            <input type="hidden" id="level" name="level" value="<%= request.getParameter("level") %>">
            <input type="hidden" id="length" name="length" value="<%= request.getParameter("length") %>">
            <input type="hidden" id="time" name="time" value="<%= request.getParameter("time") %>">
            <input type="hidden" id="drink" name="drink" value="<%= request.getParameter("drink") %>">
            <input type="hidden" id="toilet" name="toilet" value="<%= request.getParameter("toilet") %>">
            <input type="hidden" id="mart" name="mart" value="<%= request.getParameter("mart") %>">
            <input type="hidden" id="keyword" name="keyword" value="<%= request.getParameter("keyword") %>">
	      <p class="p1">회원가입 완료</p>
	      <div class="box">
	      <hr>
			<p class="p2"><span class="s1">나만의 취향 코스</span>가 완성되었습니다</p>
			<p class="p3"><span class="s2">건강해지는 발걸음</span></p>
			<p class="p4">
				<span class="sm3">
			 		<input type="text" id="pref" name="pref" readonly>
				</span>
			</p>
			<hr>
			<div style="text-align: center">
			 	<button type="button" class="Ca_button" onclick="return submit2(this.form)">코스 상세보기</button>
			</div>
	      </div>
      </form>
   </div>
   <jsp:include page="../include/footer.jsp"/>
</body>
</html>