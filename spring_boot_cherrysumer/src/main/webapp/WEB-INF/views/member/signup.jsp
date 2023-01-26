<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>시선</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/signup.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/signup.js'/>"></script>
		<script src="<c:url value='/js/idCheck.js'/>"></script>
	</head>
	<body>
	<c:import url = "/WEB-INF/views/layout/top.jsp"/>
		<div id="wrap">
			<div class="wrap">
				<div id="signUp">
					<form name="signUpForm" id="signUpForm" method="post"  action="<c:url value='/member/insert'/>">
						<h1>회원 가입</h1>
						<br>
						<h4>* 아이디</h4>
						<span class="input_area"><input type="text" maxlength="13" name="memId" id="memId"></span>
						<input type="hidden" name="checked_id" value="">
						<button type="button" id="idCheck">중복확인</button>
						<br><br>
						<h4>* 비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd" id="memPwd" 
						placeholder="영문자+숫자+특수문자 조합"></span>
						<br><br>
						
						<h4>* 비밀번호 확인</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd2" id="memPwd2"></span>
						<label id="pwdResult"></label>
						<br><br>
						
						<h4>* 이름</h4>
						<span class="input_area"><input type="text" maxlength="5" name="memName" id="memName"></span>
						<br><br>
						
						<h4>연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="memHP" id="memHP"
						placeholder="ex) 01012345678"></span>
						<br><br>
											
						<h4>이메일</h4>
						<span class="input_area"><input type="email" name="memEmail" id="memEmail"></span>
						<br><br>
						
						<h4>* 우편번호</h4>
						<span class="input_area"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button>
						<br><br>
						
						<h4>도로명주소</h4>
						<span class="input_area"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" readonly></span>
						<br><br>
						
						<h4>상세주소</h4>
						<span class="input_area"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2"></span>
						
						<h4>* 아티스트 등록 여부</h4>
						<input type='radio' name='memType' id='memType' value='일반'/>일반 <input type='radio' name='memType' id='memType' value='작가'/>아티스트
						
						<div class="btnArea">
							<button type="button" id="joinBtn" onclick="signupCheck();">가입하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
	<footer>
	</footer>
</html>