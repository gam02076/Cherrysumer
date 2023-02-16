<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>test</title>
      <link rel="stylesheet" type="text/css" href="<c:url value='/css/mypage/myPg_myArt.css' />"><!-- 모달 (Detail)  -->
     <link href="<c:url value='/css/mypage/myPg_myArt.css'/>" rel="stylesheet" type="text/css" />
     <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
   	 <script src="<c:url value='/js/text.js' />"></script> <!-- 모달 (Detail)  -->
   </head>
   <div id="container">
	      <c:forEach var="art" items="${art}">
		      	<form method="post">
					<ul class="myart">
						<li><img src="<c:url value="/images/${art.picimg}"/>" class="myimage"></li>
						<li><input type="button" value="수정하기" class="update" id="${art.picNo}">
						<input type="button" value="삭제하기" class="delete" id="${art.picNo}"></li>
					</ul>
				</form>
			</c:forEach>
				
		</div>
		<!-- paging -->
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-seperated "></ul>
		</nav>
    </body>
  </html>