
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이게 뜨길 비시면 됩니다.</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/text.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/slides.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/scroll.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/slides.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/header.css'/>">
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/picture/main_button.css'/>">
	
	<script src="<c:url value='/js/picture/main_button.js' />"></script>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="<c:url value='/js/scroll.js' />"></script>
<script src="<c:url value='/js/scroll2.js' />"></script>
<script src="<c:url value='/js/slides.js' />"></script>
<script src="<c:url value='/js/text.js' />"></script>
<script src="<c:url value='/js/picture/main_button.js' />"></script>



<script src="<c:url value='/js/exhibition_1.js'/>"></script>

<style>
#a {
	width: 100%;
	height: 70px;
	background-color: white;
}

a {
	text-decoration: none;
	color: black;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

a:hover, a:active {
	text-decoration: none;
}

.wrapper {
	/*This part is important for centering*/
	display: grid;
	place-items: center;
}

.typing-demo {
	width: 28ch;
	animation: typing 2s steps(22), blink .5s step-end infinite alternate;
	white-space: nowrap;
	overflow: hidden;
	border-right: 3px solid;
	font-family: monospace;
	font-size: 50px;
}

@
keyframes typing {from { width:0
	
}

}
@
keyframes blink { 50% {
	border-color: transparent
}
}

.show3-2{
display: flex;

}

.main_text {
position: relative;
z-index: 10;
color:white;
}
hr{
position: relative;
z-index: 10;
color:white;
}
</style>
</head>

<body>
	
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<c:import url="/WEB-INF/views/layout/head.jsp" />
	<link rel="stylesheet" type="text/css"
		href="<c:url value='/css/picture/main.css' />">
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

							<img src="image/exh_person1.png" alt="Original" style="height: 600px;">
						</div>
					</div>
				</a> <a href="/">
					<div class="panel top">
						<div class="content">
							<div class="description" style="color: white;">
								<h1>신명숙 작가의 <br>세계로 초대합니다.	</h1>
								<br />
							</div>
<img src="image/exh_person1.png" alt="Original" style="height: 400px;">
							<img src="image/bg_header.jpg" alt="Duotone">
						</div>
					</div>
				</a>
				<div class="handle"></div>
			</div>

		</div>
<%-- 		<div id="show2">
			<div id="show2-1"></div>
			<c:forEach var="list" items="${list}">
				<c:if test="${ list.memNo mod 2 ne 0 }">
					<div class="left">
						<div class="imgBx">
							<img src="image/${list.memPicture}">
						</div>
						<div class="details">
							<h2>${list.memName}</h2>
							<p>
								인스타 : ${list.memInstargram}<br />
								<br /> 페이스북 : ${list.memFacebook}<br />
								<br /> 블로그 : ${list.memBlog}<br />
							</p>
						</div>
					</div>
				</c:if>
				
				<c:if test="${ list.memNo mod 2 eq 0 }">
					<div class="right">
						<div class="imgBx">
							<img src="image/${list.memPicture}">
						</div>
						<div class="details">
							<h2>${list.memName}</h2>
							<p>
								인스타 : ${list.memInstargram}<br />
								<br /> 페이스북 : ${list.memFacebook}<br />
								<br /> 블로그 : ${list.memBlog}<br />
							</p>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div> --%>

		<br />
		<br />
		<br />
		<br />
		<br />
<button type="button" class="button">전시회 입장</button>
<button class="button">전시회 신청 바로가기</button>

<hr>
<h1 class="main_text">미술관</h1>
		<div id="show3">

			<div class="show3-2">
	
				<c:forEach var="pict" items="${pic}">
					<c:if test="${pict.picType eq '1' }">
						<br />
						<div class="show3-1">
						<img src="<c:url value="/images/${pict.picimg}"/>">
					</div>
					</c:if>

				
				</c:forEach>
			</div>
		</div>
	<hr>
	<h1 class="main_text">사진관</h1>	
		
		<div id="show3">
			<div class="show3-2">

				<c:forEach var="pict" items="${pic}">
					<c:if test="${pict.picType eq '2' }">
						<br />
						
					<div class="show3-1">
					
						<img src="<c:url value="/images/${pict.picimg}"/>">
					</div>
					</c:if>

				</c:forEach>
			</div>
		</div>
	
	
	<hr>
	<h1 class="main_text">전시회 특별관</h1>	
		
		<div id="show3">
			<div class="show3-2">

				<c:forEach var="pict1" items="${ex}">
					
						<br />
						
					<div class="show3-1">
					
						<img src="<c:url value="/images/${pict1.artImg}"/>">
					</div>
					
				</c:forEach>
			</div>
		</div>
	

  <button class="button">판매등록</button>

	
	
		<div class="main_body">

		<div class="cursor"></div>


	</div> 
	
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	
	
	
</body>
</html>