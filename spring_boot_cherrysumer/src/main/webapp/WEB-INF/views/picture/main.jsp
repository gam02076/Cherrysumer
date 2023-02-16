<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 스포트라이트 -->
	<%-- <link rel="stylesheet" type="text/css" href="<c:url value='/css/picture/main.css' />">
<script src="<c:url value='/js/picture/main.js' />"></script>  --%>
	<!-- 스포트라이트 -->



	<c:import url="/WEB-INF/views/layout/head.jsp" />
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<link rel="stylesheet" type="text/css"
		href="<c:url value='/css/picture/main2.css' />">
	<script src="<c:url value='/js/picture/main2.js' />"></script>
<script src="<c:url value='/js/exhibition_1.js'/>"></script>
	<!-- <div class="main_body">

<div class="cursor">

</div>


 </div> -->

<div class="slidebox">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<ul class="slidelist">
		<li class="slideitem">
			<div>
				<label for="slide04" class="left"></label>
				<label for="slide02" class="right"></label>
				<a><img src="/image/logo2.png"></a>
			</div>
		</li>
		
				<li class="slideitem">
			<div class="imgbox">
				<label for="slide01" class="left"></label>
				<label for="slide03" class="right"></label>
				<a><img src="/image/집.jpg"></a>
			</div>
		</li>
		
				<li class="slideitem">
			<div class="imgbox">
				<label for="slide02" class="left"></label>
				<label for="slide04" class="right"></label>
				<a><img src="/image/성.jpg"></a>
			</div>
		</li>
		
				<li class="slideitem">
			<div class="imgbox">
				<label for="slide03" class="left"></label>
				<label for="slide01" class="right"></label>
				<a><img src="/image/logo2.png"></a>
			</div>
		</li>
	</ul>
</div>




	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>

