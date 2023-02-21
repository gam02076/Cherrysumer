
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이게 뜨길 비시면 됩니다.</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/text.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/slides.css'/>">


<link rel="stylesheet" type="text/css" href="<c:url value='/css/slides.css'/>">

<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">

<link rel="stylesheet" type="text/css" href="<c:url value='/css/mainnnn.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/picture/main_button.css'/>">
	
<script src="<c:url value='/js/picture/main_button.js' />"></script>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="<c:url value='/js/scroll.js' />"></script>
<script src="<c:url value='/js/scroll2.js' />"></script>
<script src="<c:url value='/js/slides.js' />"></script>
<script src="<c:url value='/js/text.js' />"></script>
<script src="<c:url value='/js/picture/main_button.js' />"></script>
<script src="<c:url value='/js/exhibition_1.js'/>"></script>


</head>

<body>
	
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<c:import url="/WEB-INF/views/layout/head.jsp" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/picture/main.css' />">
	<script src="<c:url value='/js/picture/main.js' />"></script>


		<div id="show1">
		
		
			<div class="splitview skewed" style="margin-top:15%;">
				<a href="/">
					<div class="panel bottom">
						<div class="content">
							<div class="description" style="color: white;">
								<h1>신명숙 작가 </h1><br>
								<p>자연</p>
							
							</div>

							<img src="<c:url value="image/main.png"/>" alt="Original" style="height: 500px; width:700px;">
						</div>
					</div>
				</a> <a href="/">
					<div class="panel top">
						<div class="content">
							<div class="description" style="color: white;">
								<h1>신명숙 작가의 <br>세계로 초대합니다.	</h1>
								<br />
							</div>
<img src="" alt="Original" style="height: 200px;">
							<img src="image/maim02.jpg" alt="Duotone">
						</div>
					</div>
				</a>
				<div class="handle"></div>
			</div>

		</div>



<a href="/exhibitionList"><button type="button" class="button" style="left: 79%;">전시회 입장</button></a>
<a href="/exhibition_requestForm"><button class="button" style="left: 79%;">전시회 신청 바로가기</button></a>

<hr>
<h1 class="main_text">미술관</h1>
		<div id="show3">

			<div class="show3-2">
	
				<c:forEach var="pict" items="${pic}" ><a href="/picture/picture_list/">
					
						<br />
						<div class="show3-1">
						<img src="<c:url value="/images/${pict.picimg}"/>">
					</div>
					

				</a>
				</c:forEach>
			</div>
		</div>
	<hr>
	<h1 class="main_text">사진관</h1>	
		
		<div id="show3">
			<div class="show3-2">

				<c:forEach var="pict" items="${pic2}" ><a href="/picture/photo_list/">
					
						<br />
						
					<div class="show3-1">
					
						<img src="<c:url value="/images/${pict.picimg}"/>">
					</div>
					
	</a>
				</c:forEach>
			</div>
		</div>
	  <a href="/picture/registerform/"><button class="button">판매등록</button></a>
	
	<hr>
	<h1 class="main_text">전시회 특별관</h1>	
		
		<div id="show3">
			<div class="show3-2">

				<c:forEach var="pict1" items="${ex}"> <a href="/exhibition/detailViewExhibibition/1/eee">
					
						<br />
						
					<div class="show3-1">
					
						<img src="<c:url value="/images/${pict1.artImg}"/>">
					</div>
					</a>
				</c:forEach>
			</div>
		</div>
	



	
	
		<div class="main_body">

		<div class="cursor"></div>


	</div> 
	
	<c:import url="/WEB-INF/views/layout/main_bottom.jsp" />
	
	
	
</body>



</html>