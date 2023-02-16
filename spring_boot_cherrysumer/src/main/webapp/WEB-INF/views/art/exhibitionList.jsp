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
<script src="<c:url value='/js/exSearch.js' />"></script>
   	 <script src="<c:url value='/js/text2.js' />"></script><!-- 페이징  -->
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
					<li id="actions"><button
							onclick="/exhibition/detailViewExhibibition/1/eee" id="btnArtist">
							대표 전시회 보러가기</button></li>
				</ul>
			</div>
		</div>
	</section>

	<!-- 검색, 등록 -->
	<div>
		<!-- <div class="search-wrapper">
			<div class="input-holder">
				<input type="text" class="search-input" placeholder="Type to search" />
				<button class="search-icon" onclick="searchToggle(this, event);">
					<span></span>
				</button>
			</div>
			<span class="close" onclick="searchToggle(this, event);"></span>
		</div>
		<a href="#0" class="button12"> <em> </em> <span> 전시회 신청 </span>
		</a> -->
	</div>

	<!-- Main -->

	<div id="main">
		<c:set var="big" value="0" />
		<c:set var="small" value="0" />
		<c:set var="now" value="1" />

		<c:forEach var="art" items="${art }" varStatus="status">

			<c:choose>

				<c:when test="${status.index%2!=0 and now==1 }">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }">
						<div class="event7 banner_img">
							<input type="hidden" value="${art.exhEndDate }" class="EndDate" />
							<img src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
								onError="this.onerror=null; this.src='<c:url value='/image/2.png'/>'">

							<div class="hover_text">
								<p class="p1">${art.exhTitle_kr }</p>
								<p class="p2 p2title">[ ${art.exhTitle_kr } ]</p>
								<p class="p2 p2name">${art.memId }</p>
								<p class="sample03"></p>
							</div>
						</div>
					</a>
					<c:set var="now" value="2" />
				</c:when>

				<c:when test="${status.index%2!=0 and now==2 }">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }">
						<div class="event7 banner_img2">
							<input type="hidden" value="${art.exhEndDate }" class="EndDate" />
							<img src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
								onError="this.onerror=null; this.src='<c:url value='/image/2.png'/>'">

							<div class="hover_text">
								<p class="p1">${art.exhTitle_kr }</p>
								<p class="p2 p2title">[ ${art.exhTitle_kr } ]</p>
								<p class="p2 p2name">${art.memId }</p>
								<p class="sample03"></p>
							</div>
						</div>
					</a>
					<c:set var="now" value="1" />
				</c:when>

				<c:when test="${status.index%2==0 and big!=small}">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }">
						<div class="event7 banner_img">
							<input type="hidden" value="${art.exhEndDate }" class="EndDate" />
							<img src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
								onError="this.onerror=null; this.src='<c:url value='/image/2.png'/>'">

							<div class="hover_text">
								<p class="p1">${art.exhTitle_kr }</p>
								<p class="p2 p2title">[ ${art.exhTitle_kr} ]</p>
								<p class="p2 p2name">${art.memId }</p>
								<p class="sample03"></p>
							</div>
						</div>
					</a>
					<c:set var="small" value="${small+1 }" />
				</c:when>

				<c:when test="${status.index%2==0 and big==small}">
					<a
						href="/exhibition/detailViewExhibibition/${art.exhNo }/${art.memId }">
						<div class="event7 banner_img2">
							<img src="<c:url value='/image/${art.artImg }'/>" alt="전시회 사진"
								onError="this.onerror=null; this.src='<c:url value='/image/2.png'/>'">
							<input type="hidden" value="${art.exhEndDate }" class="EndDate" />
							<div class="hover_text">
								<p class="p1">${art.exhTitle_kr }</p>
								<p class="p2 p2title">[ ${art.exhTitle_kr } ]</p>
								<p class="p2 p2name">${art.memId }</p>
								<p class="sample03"></p>
							</div>
						</div>
					</a>
					<c:set var="big" value="${big+1 }" />
				</c:when>
			</c:choose>
			<%-- </c:forEach> --%>
		</c:forEach>
	</div>
	
	<!-- paging -->
		<div id="pageNum">
			<nav aria-label="Page navigation example">
				<ul class="pagination pagination-seperated "></ul>
			</nav>
		</div>


	<!-- bottom Banner -->
	<section id="banner2">
		<div class="coming">
			<c:forEach var="comingart" items="${comingart }">
				<div class="imgHoverEvent event2">
					<div class="imgBox"
						style="background-image:url(/image/${comingart.artImg });">
					</div>
					<div class="hoverBox">
						<span>
							<p class="p1">Coming Soon</p>
						</span>
					</div>
				</div>

			</c:forEach>
		</div>
	</section>



	<hr style="margin: 0;">
</body>
<c:import url="/WEB-INF/views/layout/bottom.jsp" />
<script src="<c:url value='/js/countDown.js' />"></script>
</html>