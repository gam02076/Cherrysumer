<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>Insert title here</title>
      <link rel="stylesheet" type="text/css" href="<c:url value='/css/artistModal.css' />">
      	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<%-- <script src="<c:url value='/js/artistModal.js' />"></script> --%>
		
   </head>
    <body>
    
   <!-- 모달 창 -->
   <div class="modal_content" title="클릭하면 창이 닫힘">
		    
   			<div id="detail">
			    <div class="modal_imgbox">
		      		<img src="<c:url value='/image/${name.memImg }'/>" id="modal_img" >
		      		<div id="history">작가 약력입니다.</div>
	      		</div>
	      		<div id = "profile">
	      		<div id="name">${name.memName }</div>
	      		<hr>
	      		<div id="intro"><%-- ${name.memIntroduce} --%>
	      		작가 소개입니다.
	      		 </div>
	      		</div>
      		</div>
      		
		  
		  </div>
      		<div id="art">
	      		<c:forEach var="art" items="${art }" begin = "0" end = "3">
	      		<div class="artImg">
	      		<img src="<c:url value='/image/${art.picimg }'/>" class="artImgs" onerror="this.style.display='none';">
	      		</div>
	      		</c:forEach>
      		</div>
		  
	  
    </body>
  </html>