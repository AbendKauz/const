<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>header</title>
<!-- style -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/header.css">
<!-- script -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</head>
<body>
   <header class="p-3 mb-3 border-bottom">
      <div class="container">
         <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
               <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"></svg>
            </a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-1">
				<li>
					<a class="logo">
						<img src="../resources/img/logo.png" alt="x" class="logoimg">
					</a>
				</li>
				<li style="float: right">
				   <a class="nav-link px-3 link-dark" style="margin-left: 337px;" onclick="document.getElementById('frm').submit();">메인화면으로</a>
				</li>
            </ul>
         </div>
      </div>
   </header>
</body>
</html>