<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>시선 챗봇</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/chatbot.js'/>"></script>
		<script src="<c:url value='/js/chatbotModal.js'/>"></script>
		<style>
		  @import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
		</style>


	</head>
	<body>
		<!-- 모달 창 -->
    	<div class="modal">
			<div class="modal_content" title="질문을 입력해주세요.">
      		<!--<input type="hidden" id="selectmemId">-->
      		
      			<!-- 챗봇 Header -->
      			<div id ="chatHeader">
      				<span>시선 See-Sun</span>
      				<button id="btnClose">X</button>
      			</div>
      			<!-- 챗봇 흰 테두리선 -->
	      		<div class="chatbotBorder">
	      			<!--  채팅 답변 출력 -->
	      			<div id="chatBox"></div>
	      		</div>      		
	      		<form id="chatbotForm">
	      			<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">
	      			<input type="submit" value="전송">
	      		</form>

			</div>
		</div>
		<!-- 모달 창 끝 -->
	</body>
</html>