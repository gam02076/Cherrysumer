<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibitionList</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/ex_List.css' />">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<c:import url="/WEB-INF/views/layout/head.jsp" />
<link rel="shortcut icon" href="#">
<!-- 파비콘 오류 -->
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<!-- Banner -->
	<section id="banner" class="major1">
		<div class="inner">
			<header id="ex_title">
				<h1>시선, 전시회</h1>
			</header>
			<hr id="hline">
			<div class="content">
				<p>시선 전시회 입니닷 !</p>
				<ul>
					<li id="actions"><a
						href="/exhibition/detailViewExhibibition/1/eee" id="btnArtist">대표
							전시회 보러가기<%-- <img src="<c:url value='/image/arrow.png'/>" id="arrow"> --%>
					</a>
					</li>

				</ul>
			</div>
		</div>
	</section>
	<%-- <div id="exArt">
					<div class="exBestArt" style="background-image:url(/image/명화05.jpg); background-size:cover">
					 <img alt="" src="<c:url value='/image/명화05.jpg'/>">
					</div>
					</div> --%>
					<a href="#" id="myButton">전시회 신청</a>

	<!-- Main -->

	<div id="main">
		<c:set var="big" value="0" />
		<c:set var="small" value="0" />
		<c:set var="now" value="1" />

		<c:forEach var="art" items="${art }" varStatus="status">

			<c:choose>

				<c:when test="${status.index%2!=0 and now==1 }">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }"
						class="banner_img"> <img
						src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
						onerror="this.style.display='none';">
						<div class="countdowun">
						<input type="hidden" value="${art.exhEndDate }" class="EndDate"/>
							<p class="sample03">test2</p>
						</div>
						<div class="hover_text">
							${art.exhTitle_kr }
							<hr>${art.artName_kr }</div>
					</a>
					<c:set var="now" value="2" />
				</c:when>

				<c:when test="${status.index%2!=0 and now==2 }">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }"
						class="banner_img2"> <img
						src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
						onerror="this.style.display='none';">
						<div class="countdowun">
							<p class="sample03">test</p>
						</div>
						<div class="hover_text">
							${art.exhTitle_kr }
							<hr>${art.artName_kr }
						</div>
					</a>
					<c:set var="now" value="1" />
				</c:when>

				<c:when test="${status.index%2==0 and big!=small}">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }"
						class="banner_img"> <img
						src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
						onerror="this.style.display='none';">
						<div class="countdowun">
							<p class="sample03">test</p>
						</div>
						<div class="hover_text">
							${art.exhTitle_kr }
							<hr>${art.artName_kr }</div>
					</a>
					<c:set var="small" value="${small+1 }" />
				</c:when>

				<c:when test="${status.index%2==0 and big==small}">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }"
						class="banner_img2"> <img
						src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
						onerror="this.style.display='none';">
						<div class="countdowun">
						<input type="hidden" value="${art.exhEndDate }" class="EndDate"/>
							<p class="sample03">test</p>
						</div>
						<div class="hover_text">
							${art.exhTitle_kr }
							<hr>${art.artName_kr }
						</div>
					</a>
					<c:set var="big" value="${big+1 }" />
				</c:when>
			</c:choose>
			<%-- </c:forEach> --%>
		</c:forEach>
	</div>
	<!-- <div id="comingtext">Coming Soon</div> -->

	<div class="coming">
		<c:forEach var="comingart" items="${comingart }">

			<div class="imgHoverEvent event2">
				<div class="imgBox">
					<img src="<c:url value='/image/${comingart.artImg }'/>" alt="전시회 사진"
						onerror="this.style.display='none';">
				</div>
				<div class="hoverBox">
					<span>
						<p class="p1">Coming Soon</p>
					</span>
				</div>
			</div>

		</c:forEach>
	</div>
	
	<!-- Banner -->
	<section id="banner" class="major1">
		<div class="inner">
			<header id="ex_title">
				<h1>시선, 전시회</h1>
			</header>
			<hr id="hline">
			<div class="content">
				<p>시선 전시회 입니닷 !</p>
				<ul>
					<li id="actions"><a
						href="/exhibition/detailViewExhibibition/1/eee" id="btnArtist">대표
							전시회 보러가기<%-- <img src="<c:url value='/image/arrow.png'/>" id="arrow"> --%>
					</a>
					</li>

				</ul>
			</div>
		</div>
	</section>
	
	
	<hr style="margin: 0;">
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	<script src="<c:url value='/js/countDown.js' />"></script>
</body>
</html>