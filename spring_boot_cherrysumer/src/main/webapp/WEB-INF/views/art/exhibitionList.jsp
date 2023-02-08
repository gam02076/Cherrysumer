<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>exhibitionList</title>
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/ex_List.css' />">
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
     <c:import url="/WEB-INF/views/layout/top.jsp" />
    <link rel="shortcut icon" href="#"> <!-- 파비콘 오류 -->
   </head>
    <body>
      <!-- Banner -->
					<section id="banner" class="major1">
						<div class="inner">
							<header id="ex_title">
								<h1>시선, 전시회</h1>
							</header>
							<hr id="hline">
							<div class="content">
								<p>시선 전시회 입니닷 ! </p>
								<ul>
									<li id="actions"><a href="/exhibition/detailViewExhibibition/1/eee" id="btnArtist">대표 전시회 보러가기<%-- <img src="<c:url value='/image/arrow.png'/>" id="arrow"> --%></a></li>
								
								</ul>
							</div>
						</div>
					</section>
					<div id="exArt">
					<div class="exBestArt" style="background-image:url(/image/명화05.jpg); background-size:cover">
					<%--  <img alt="" src="<c:url value='/image/명화05.jpg'/>"> --%>
					</div>
					</div>

				<!-- Main -->
				
					<div id="main">
					<c:set var="big" value="0"/>
				      <c:set var="small" value="0"/>
				      <c:set var="now" value="1"/>
				      
 						<c:forEach var="art" items="${art }" begin = "0" end = "5" varStatus="status">
 						<%-- <c:forEach var="pic" items="${pic }" begin = "5" end = "8" varStatus="status"> --%>
 						
						 <c:choose>
	
						<c:when test="${status.index%2!=0 and now==1 }">
						<a href="/exhibition/detailViewExhibibition/1/eee" class="banner_img">
						  <img src="<c:url value='/image/${pic[status.index].picimg }'/>" alt="전시회 사진" onerror="this.style.display='none';">
						  <div class="hover_text">봄의 아지랑이<hr>${art.artName_kr }</div>
						</a>
						<c:set var="now" value="2"/>
						</c:when>
						
						<c:when test="${status.index%2!=0 and now==2 }">
						<a href="/exhibition/detailViewExhibibition/1/eee" class="banner_img2">
						  <img src="<c:url value='/image/${pic[status.index].picimg }'/>" alt="전시회 사진" onerror="this.style.display='none';">
						  <div class="hover_text">봄의 아지랑이<hr>${art.artName_kr }</div>
						</a>
						<c:set var="now" value="1"/>
						</c:when>
						
						<c:when test="${status.index%2==0 and big!=small}">
						<a href="/exhibition/detailViewExhibibition/1/eee" class="banner_img">
						  <img src="<c:url value='/image/${pic[status.index].picimg }'/>" alt="전시회 사진" onerror="this.style.display='none';">
						 <div class="hover_text">봄의 아지랑이<hr>${art.artName_kr }</div>
						</a>
							<c:set var="small" value="${small+1 }"/>
							</c:when>
							
						<c:when test="${status.index%2==0 and big==small}">
							<a href="/exhibition/detailViewExhibibition/1/eee" class="banner_img2">
						  <img src="<c:url value='/image/${pic[status.index].picimg }'/>" alt="전시회 사진" onerror="this.style.display='none';">
						  <div class="hover_text">봄의 아지랑이<hr>${art.artName_kr }</div>
						</a>
							<c:set var="big" value="${big+1 }"/>
							</c:when>
						</c:choose>
						<%-- </c:forEach> --%>
						</c:forEach>
						</div>
						<hr style="margin:0;">
						
							<!-- Two -->
							<section id="two">
								<div class="inner2">
									<header class="major">
										<h2>Massa libero</h2>
									</header>
									<p>Nullam et orci eu lorem consequat tincidunt vivamus et sagittis libero. Mauris aliquet magna magna sed nunc rhoncus pharetra. Pellentesque condimentum sem. In efficitur ligula tate urna. Maecenas laoreet massa vel lacinia pellentesque lorem ipsum dolor. Nullam et orci eu lorem consequat tincidunt. Vivamus et sagittis libero. Mauris aliquet magna magna sed nunc rhoncus amet pharetra et feugiat tempus.</p>
									<ul class="actions">
										<li><a href="landing.html" class="button next">Get Started</a></li>
									</ul>
								</div>
							</section>
    </body>
  </html>