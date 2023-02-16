<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작가 소개</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/artistList.css' />">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/artistModal.css' />">
<c:import url="/WEB-INF/views/layout/head.jsp" />
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/artistList.js' />"></script>
<link rel="shortcut icon" href="#">
<!-- 파비콘 오류 -->
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<div id="wrapper">

		<section id="main">

			<!-- Items -->
			<div class="items">
				<div class="intro span-2">
					<h1>시선</h1>
					<p>
						안녕하세요<br /> 시선아티스트소개
					</p>
				</div>
				<c:forEach var="art" items="${artList }" varStatus="status">
					<c:choose>

						<c:when test="${status.index%2!=0}">
							<article class="item thumb artist-list" id="${art.memId}">
								<h2>${art.memName }작가</h2>
								<a href="#" class="image"><img
									src="<c:url value='/images/${art.memImg }'/>" alt=""
									onError="this.onerror=null; this.src='<c:url value='/images/2.png'/>'"></a>
							</article>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>

			<!-- Items -->
			<div class="items">
				<c:forEach var="art" items="${artList }" varStatus="status">
					<c:choose>

						<c:when test="${status.index%2!=1}">

							<article class="item thumb artist-list" id="${art.memId}">
								<h2>${art.memName }작가</h2>
								<a href="#" class="image"><img
									src="<c:url value='/images/${art.memImg }'/>" alt=""
									onError="this.onerror=null;"></a>
							</article>
						</c:when>
					</c:choose>
				</c:forEach>
			</div>

		</section>



		<div class="scrollZone left" style="left: 0px;"></div>
		<div class="scrollZone right" style="right: 0px;"></div>


		<!-- 모달 창 -->
		<div class="modal"></div>
	</div>
</body>
<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</html>