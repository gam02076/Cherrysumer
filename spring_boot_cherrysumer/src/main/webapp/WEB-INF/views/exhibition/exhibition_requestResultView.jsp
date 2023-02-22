<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>신청 완료</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition_requstResult.css'/>">
		
		<style>
		  @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
		</style>
	</head>
	<body>
		<c:import url = "/WEB-INF/views/layout/top.jsp"/>
		<div id="textBox">
			<div id="textForm">
				<div id="text">
					신청이 완료 되었습니다. <br>
					신청해 주셔서 감사합니다. <br>
					<br>
					Your application has been completed.<br>
					Thanks for your Request.
				</div>
			</div>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>