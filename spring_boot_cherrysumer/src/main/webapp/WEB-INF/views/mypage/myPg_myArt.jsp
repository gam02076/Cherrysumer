<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>내 작품 목록</title>
     <c:import url="/WEB-INF/views/layout/head.jsp" />
 	 <link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myPg_myArt.css' />"><!-- 모달 (Detail)  -->
 	 <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
   	 <script src="<c:url value='/js/mypage/myPg_myArt.js' />"></script> <!-- 모달 (Detail)  -->
   	 <script src="<c:url value='/js/text.js' />"></script><!-- 페이징  -->
   </head>
    <body>
    <c:import url="/WEB-INF/views/layout/top.jsp" />
    <div id="mypageMenuBar">메뉴</div>
   	<div id="main">
   		<div id="local">마이페이지 > 내 작품</div>
			<div id="container">
		    	<c:forEach var="art" items="${art}">
					<article class="box" style="background-image:url(<c:url value='/images/${art.picimg }'/>)">
						<div id="title">${art.picTitle}</div>
						<div class="info">
							<input type="button" value="수정하기" class="update" id="${art.picNo}" style="margin-top:55px">
							<input type="button" value="삭제하기" class="delete" id="${art.picNo}">
						</div>
					</article>
				</c:forEach>
			</div>
		</div>
		<!-- paging -->
		<div id="pageNum">
			<nav aria-label="Page navigation example">
				<ul class="pagination pagination-seperated "></ul>
			</nav>
		</div>
		
		
		<!-- 모달 창 -->
	<div id="Detailmodal">
		<div id="Detail_content" title="클릭하면 창이 닫힘"></div>
	</div>
	  <c:import url="/WEB-INF/views/layout/bottom.jsp" />
    </body>
  </html>