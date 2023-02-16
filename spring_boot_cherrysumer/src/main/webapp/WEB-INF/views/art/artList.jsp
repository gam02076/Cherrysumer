<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>사진 목록</title>
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/artList.css' />">
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
     <script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
     <script src="<c:url value='/js/artList.js' />"></script>
     <c:import url = "/WEB-INF/views/layout/top.jsp"/>
   </head>
    <body>
    <!-- 모달 창 -->
      <div id="Detailmodal">
		  <div id="Detail_content" title="클릭하면 창이 닫힘">
		  </div>
	  </div>
      
    <div id="wrap">
    <c:forEach var="art" items="${art}">
    <div class="box" id="${art.picNo}">
      <img src="<c:url value='/images/${art.picimg }'/>"class="photo">
      </div>
      </c:forEach>
      </div>
     
    </body>
  </html>