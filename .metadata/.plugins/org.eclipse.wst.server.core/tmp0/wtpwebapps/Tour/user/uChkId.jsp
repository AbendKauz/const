<%@page import="java.io.PrintWriter"%>
<%@page import="model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	boolean result = false;
	UserDAO dao = UserDAO.getInstance();
	
	result = dao.duplecateID(id);
	
	response.setContentType("text/html; charset=utf-8");
	PrintWriter re = response.getWriter();
	
	if(result){	%>
		<center>
			<br/><br/>
			<h4>이미 사용중인 ID입니다.</h4>
		</center>
		<div style="text-align: right">
			<button onclick="window.close()">닫기</button>
		</div>
	<%	}else{	%>
		<center>
			<br/><br/>
			<h4><%= id %>는 사용 가능한 ID입니다.</h4>
		</center>
		<div style="text-align: right">
			<button onclick="useId()">사용하기</button><!-- 사용하기 클릭 시 이전창의 id 입력란이 readonly 됨 -->
			<button onclick="window.close()">닫기</button>
		</div>
		<script type="text/javascript">
			function useId(){
				opener.joinFrm.id.readOnly = true;
				window.close();
			}
		</script>
	<%	}	%>