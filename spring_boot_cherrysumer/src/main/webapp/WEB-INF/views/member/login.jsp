<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>시선</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>
	</head>
	<body>
	<c:import url = "/WEB-INF/views/layout/top.jsp"/>
	<div id="wrap">
		<div id="loginBox">
			<div id="login">
				<form id="loginForm" name="loginForm">
					
					<span class="input_area"><input type="text" maxlength="13" id="id" name="id" value="${memId}"
					placeholder="아이디" required/></span>
					
					<span class="input_area"><input type="password" maxlength="15" id="pwd" name="pwd" 
					placeholder="비밀번호" required></span>
					<ul>
						<li><a href="<c:url value="/member/findIdForm"/>">아이디 찾기</a></li>
						<li><a href="<c:url value="/member/findPwdForm"/>">비밀번호 변경</a></li>
						<li><a href="<c:url value="/member/signup"/>">회원가입</a></li>
					</ul>
					<button type="submit">로그인</button>
				</form>
			</div>
		</div>
	</div>
	</body>
	<footer>
	</footer>
</html>