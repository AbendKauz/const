<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>header</title>
<link rel="stylesheet" href="../resources/css/header.css">

</head>
<style>
@font-face {
 font-family: 'NanumBarunGothic';
 font-style: normal;
 font-weight: 400;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
}
.hdcl{
	color:white !important;
}
.hdcl:hover{
	color:#6f42c1 !important;
}
*{   
	font-family: 'NanumBarunGothic';
}
li{list-style:none;}
a{text-decoration:none; color:inherit;}

.header_box{
   width:100%;
   height:90px;
   border-bottom: 1px solid white;   
}
.logo_box{
   height:100px;
   width:20%;
   float:left;
}
.logoimg{
   width:180px;
   height:40px;
   margin-top:22px;
   margin-left:160px;
}
.menu_box{
   width:80%;
   height:80px;
   float:left;
}
.menu_box li{
   margin-top:30px;
   width:180px;
   height: 40px;
   font-size: 20px;
   float:left;
   margin-left:20px;
   line-height: 1;
   color:white;
   font-weight: bold;
}
.menu_box .li_1{
   margin-left:120px;
   margin-right:-190px;
}

.menu_box .li_2{
   margin-left: 250px;
}
.menu_box li {
   color:black;
}
</style>
<body>
   <header class="header_box">
      <div class="logo_box">
         <a href="/main.ma">
            <img src="../resources/img/logo_w.png" alt="x" class="logoimg">
         </a>
      </div>
      <div class="menu_box">
         <ul>
            <%   if(session.getAttribute("id") != null){ %>
            <li class="li_1"><a href="/pCate.pr" class="nav-link px-3 pref_ro hdcl">취향길</a></li>
            <%   } %>
            <li class="li_2"><a href="/mInfo.ma" class="nav-link px-3 hdcl">소개</a></li>
            <li><a href="/cList.co" class="nav-link px-3 hdcl">여행길</a></li>
            <li><a href="/rList.re" class="nav-link px-3 hdcl">후기 보기</a></li>
            <%   if(session.getAttribute("id") == null){ %>
            <li><a href="/tryLogin.us" class="nav-link px-3 hdcl">로그인</a></li>
            <%   } else { %>
            <li><a href="/uLogout.us" class="nav-link px-3 hdcl">로그아웃</a></li>
            <%   } %>
         </ul>
      </div>
   </header>
</body>
</html>