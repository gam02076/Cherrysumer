<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 변경</title>
		<!-- head -->
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/findpwdcomplete.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/changePwd.js'/>"></script>
		<script src="<c:url value='/js/idCheck.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
			<div class="findbox">
				<div id="findId">
					<form name="changePwd" id="changePwd" method="post"  action="<c:url value='/member/changePwd'/>">
						<h1>비밀번호 변경</h1>
						
						<h4>* 아이디</h4>
						<span class="input_area"><input type="text" maxlength="13" name="memId" id="memId"></span>
						<br><br>
						<h4>* 변경할 비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd" id="memPwd" 
						placeholder="영문자+숫자+특수문자 조합"></span>
						<br><br>			
						<h4>* 변경할 비밀번호 확인</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd2" id="memPwd2"></span>
						<label id="pwdResult"></label>
						<br><br>
						<div class="btnArea">
							<button type="button" id="joinBtn" onclick="signupCheck();">비밀번호 변경하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
	<footer>
        <!-- bottom -->

    </footer>
</html>