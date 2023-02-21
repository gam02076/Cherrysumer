<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<header>

	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<script src="<c:url value='/js/chatbotModal.js'/>"></script>
	<script src="<c:url value='/js/chatbot.js'/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/chatbot.css'/>">
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap');
		.adminbtn{
		    position: absolute;
		    right: 89%;
		    top: 37%;
		}
		
		.adminbtn_01{
			    position: absolute;
		    right: 80%;
		    top: 37%;
		}
	</style>
	
	
	


	<div class="header">
		<a href="/"><img
			src="<c:url value='/images/exh_logo(text2).png'/>" class="logo"></a>
		<div id="headerRight">
			<div class="menuList" id="memList">
				<c:if test="${empty sessionScope.sid }">
					<a class="header-item" href="/member/login">로그인</a>
					<a class="header-item" href="/member/signup">회원가입</a>
				</c:if>

				<c:if test="${not empty sessionScope.sid }">
					<div id="mainMenuBox">
						<ul id="menuItem">
							<li><a class="header-item" href="/member/logout">로그아웃</a></li>
							<li><a id="showAllMenu">내 정보 ▼</a></li>
							<%-- <li style="width: auto;"><fmt:formatNumber
									value="${sessionScope.mypoint}" pattern="#,###" /> 포인트</li> --%>
							<li>${sessionScope.sid}님</li>
						</ul>
					</div>
					<div id="subMenuBox">
						<!-- 서브 메뉴 아이템 6개  -->
						<div class="subMenuItem" id="subMenuItem1">
							<ul>
								<li><a href="/Mypage">마이페이지</a></li>
								<li><a href="/myArt">작품 관리</a></li>
								<!-- <li><a href="#">포인트 충전</a></li>
								<li><a href="#">주문 정보</a></li> -->
							</ul>
						</div>
					</div>
				</c:if>
				
				<c:if test="${sessionScope.sid=='admin'}">
			
			  <button class="adminbtn"><a href="/exhibition/requestList">관리자 목록</a></button>
			   <button class="adminbtn_01"><a href="/PhotoFilter">사진 승인</a></button>
			</c:if>
				
				
			</div>

			<div class="menuList">
				<a href="/artist">Artists</a> <a href="/exhibitionList">Exhibition</a>
				<a href="/picture">Painting & Photo</a>
				<%--   <img src="<c:url value='/images/exh_menu_icon.png'/>" class="icon"> --%>
			</div>
		</div>
	</div>
</header>
	<div id="headerHeight"></div>
	<!-- 헤더 높이 div -->
	<div id="upBtnBox">
		<img src="<c:url value='/images/chat.png'/>" id="chatBtn">
		<a href="#"><button id="upBtn">top</button></a>
	</div>
	
	<!-- 챗봇 모달 창 -->
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
