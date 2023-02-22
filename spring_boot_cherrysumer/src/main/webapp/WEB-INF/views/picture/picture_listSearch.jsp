<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>목록리스트</title>
</head>


<body class="listbody">
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />


	
<div>
	<form action="/picture/searchResult" method="post">
		<div class="searchdiv">
			<input type="search" name="keyword" placeholder="검색"
				class=searchinput>
		</div>
		<!-- <input type="submit" name=""
					value="검색"> -->
	</form>
</div>


<div class="list_container">

		<c:forEach var="pict" items="${searchList}">
			<div class="box"  id="${pict.picNo}">
				<input type="hidden" class="cardNO" value="${pict.picNo}">
				<div class="img" value="${pict.picNo}">
					<img src="<c:url value="/images/${pict.picimg}"/>" alt="Hover Effect">
				</div>
				<div class="info">
					<table >
						
								<div><h2>${pict.picTitle}</h2></div>
						
						<tr>
							<th>작가:</th>
							<td>${pict.picauthor}</td>
						</tr>
						<tr>
							<th>가격:</th>
							<td>${pict.picPrice}원</td>
						</tr>
						<tr>
							<th>사이즈:</th>
							<td>${pict.picSize}</td>
						</tr>
												<tr>
							<th>소재/기법:</th>
							<td>${pict.pictech}</td>
						</tr>
					</table>

				</div>
			</div>
		</c:forEach>
</div>


	






<!-- 모달 창 -->
      <div id="Detailmodal">
		  <div id="Detail_content" title="클릭하면 창이 닫힘">
		  </div>
	  </div>

<!-- 모달창 끝 -->

<!-- 플로팅 버튼 -->

 <div class="floating-button">
  
  <span class="move-guestBook">
     <a class="guest-btn" href="<c:url value='/picture/photo_list/'/>"></a>
  </span>
  
   <span class="move-myWebSite">
      <a class="myWebSite-btn" href="<c:url value='/picture/picture_list/'/>"></a>
	</span>
<c:if test="${not empty sessionScope.sid }">
	<span class="move-myWebSite">
      <a class="myWebSite-btn2" href="<c:url value='/picture/registerform/'/>"></a>
	</span>
</c:if>
</div>





<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>


</html>