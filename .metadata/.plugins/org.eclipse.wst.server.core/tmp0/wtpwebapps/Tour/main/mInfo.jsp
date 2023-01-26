<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>홈페이지 소개</title>
<!-- style -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<!-- script -->
<script type="text/javascript" src="../resources/js/user.js"></script>
</head>
<style>
/*   .box{
      width:800px;
      height:700px;      
      margin:0 auto;
      opacity: 0.75;
      border-top-left-radius:20px;
      border-radius:5px;
      box-shadow: 5px 5px 5px 5px rgb(0,0,0,0.2);
      margin-top:10px;
      margin-bottom: 70px;
      position: relative;
   }*/
.text_1{
   padding-top:70px;
     color:#25a4cd;
     font-size: 20px;
     font-weight: bold;
     text-align: center;
}
.text_1_1{
   padding-top:40px;
     color:#25a4cd;
     font-size: 20px;
     font-weight: bold;
     text-align: center;
     margin-bottom: 10px;
}
.t1 {
   margin-bottom: 40px;
}
.text_2{
   color:#25a4cd;
   font-size: 20px;
   font-weight: bold;
   text-align: center;
   margin-top: 60px;
   margin-bottom: 60px;
}
.p1{
   text-align:center;
   font-size:16px;
   padding-top:15px;
   color:gray;
   letter-spacing :1px;
   line-height: 2;
}
.namegroup{
   margin-left:170px;
}
.tname, .tmail{
   color:gray;
   font-size: 18px;
}
.tmail{
   margin-bottom: 0px;
}
.tname>.s1{
   margin-left: 200px;
}
.s2{
   margin-left:105px;
}

.tname>img, .s1>img{
   width:50px;
   height:80px;
   padding-bottom: 20px;
}
</style>
<body>
   <jsp:include page="../include/header.jsp" />
   <div class="container">
         <div class="box">   
               <p class="text_1">홈페이지 소개</p>
               <p class="p1">
               역사적으로 축적된 수 많은 우리의 자연, 인문자원들의 조화로운 풍경을 담아<br>
               AI 머신러닝을 통한 개개인의 취향에 맞춰, 체험하고 즐길 수 있도록 전국의 걷기 여행길을 소개해드립니다<br>
              
               <p class="text_1_1">서비스 개요</p>
               <p class="p1 t1">걷기 여행길의 활성화로 국민 건강증진 및 삶의 질 향상에 기여하는 것을 목표로<br> 
               꼭 필요한 정보만 개인 맞춤으로 제공하는 편리성을 중점으로 한 서비스</p>
               <hr>
                <p class="text_2">프로젝트 구성원</p>
                   <div class="namegroup">
                        <p class="tname"><img src="../resources/img/g.jpg">한경훈 <span class="s1"><img src="../resources/img/j.jpg">김준영</span><span class="s1"><img src="../resources/img/e.jpg">김은주</span><span class="s1"><img src="../resources/img/h.jpg">박형준</span></p>
                        <p class="tmail">de518n@naver.com &nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">fauleule@gmail.com</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s2">ej45423428@gmail.com</span><span class="s2">kai11189@naver.com</span></p>
                  </div>
              
         </div>
   </div>
   <jsp:include page="../include/footer.jsp"/>
</body>
</html>