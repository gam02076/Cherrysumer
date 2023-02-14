<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">



<title>사진,그림 판매 목록</title>
</head>


<body class="container">

<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />



<ul class="list">

<li>
<a href="<c:url value='/picture/picture_list/'/>">Art</a>
</li>
<li>
<a href="<c:url value='/picture/photo_list/'/>">PHOTO</a>
</li>

</ul>


</body>

 
 <!-- 플로팅버튼 -->
 
 <div class="floating-button">
  

	
	 <c:if test="${not empty sessionScope.sid }">
	<span class="move-myWebSite">
      <a class="myWebSite-btn2" href="<c:url value='/picture/registerform/'/>"></a>
	</span>
</c:if>
  
</div>
 
 
 
 
 

</html>