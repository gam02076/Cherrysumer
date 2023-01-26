<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>작가 소개</title>
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/artistList.css' />">
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/artistModal.css' />">
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
     <c:import url="/WEB-INF/views/layout/top.jsp" />
     <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/artistList.js' />"></script>
		<link rel="shortcut icon" href="#"> <!-- 파비콘 오류 -->
   </head>
    <body id="artistBody">
    
    <div id="content">
      <div id="artists">
    	<div id="list">
    	<div id="intro_cover">
	    	<div class="intro"> <h1>ARTIST</h1>
	    	<hr>
	    	<h3>소개</H3></div>
	    	<button onclick="location.href='/exhibitionList'" class="intro2"> <h1>시 선 </h1>
	    	<h3>전시회 보러 가기     ----></H3></button>
    	</div>
    	
	    <c:forEach var="art" items="${artList }" >
			      <div class="artist-list" id="${art.memId}">
			      	<div class="imgbox">
			      		<img src="<c:url value='/image/${art.memImg }'/>" id="artpicture" class="artist">
				    </div>
				      	<div class="artist-title">
			      			<div class="artist-name">${art.memName }</div>
			      			<a id="aa">작가</a>
			      		</div>
			      </div>
	      </c:forEach>
	  	</div>
	  </div> 
       <div class="scrollZone left" style="left:0px;"></div> 
      <div class="scrollZone right" style="right:0px;"></div> 
	  </div>
      
      <!-- 모달 창 -->
      <div class="modal">
		  
	  </div>
    </body>
  </html>