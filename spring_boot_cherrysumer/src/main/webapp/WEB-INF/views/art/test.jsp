<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>Insert title here</title>
   </head>
    <body>
      
      
      <c:set var="big" value="0"/>
      <c:set var="small" value="0"/>
      <c:set var="now" value="1"/>

<c:forEach var="cnt" begin="1" end="10" step="1">
<c:choose>
	
	<c:when test="${cnt%2!=0 and now==1 }">
	<h2>작은사진</h2>
		<c:set var="now" value="2"/>
		</c:when>
		
	<c:when test="${cnt%2!=0 and now==2 }">
		<h2>큰사진</h2>
		<c:set var="now" value="1"/>
		</c:when>
		
		<c:when test="${cnt%2==0 and big!=small}">
		
	<p>작은사진</p>
		<c:set var="small" value="${small+1 }"/>
		</c:when>
		
	<c:when test="${cnt%2==0 and big==small}">
		<p>큰사진</p>
		<c:set var="big" value="${big+1 }"/>
		</c:when>
	
</c:choose>
</c:forEach>
      
      
      
      
    </body>
  </html>