<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header>
    <div class="header">
        <a href="/"><img src="<c:url value='/images/exh_logo(text2).png'/>" class="logo"></a>
        <div id="headerRight">
        <div class="menuList" id="memList">
        	<c:if test="${empty sessionScope.sid }">
					<a class="header-item" href="/member/login">로그인</a>
					<a class="header-item" href="/member/signup">회원가입</a>
			</c:if>
	
			<c:if test="${not empty sessionScope.sid }">
			<div id="mainMenuBox">
				<ul id="menuItem">
            		<li><a class="header-item" href="/member/logout">로그아웃</a> </li>
					<li><a id="showAllMenu">내 정보 ▼</a></li>
            		<li style="width: auto;"><fmt:formatNumber value="${sessionScope.mypoint}" pattern="#,###" /> 포인트</li>
            		<li>${sessionScope.sid}님</li></ul>
			   </div>
			    <div id="subMenuBox">
	               	<!-- 서브 메뉴 아이템 6개  -->
	               	<div class="subMenuItem" id="subMenuItem1">
	               		<ul>
	            			<li><a href="/Mypage">마이페이지</a></li>
	            			<li><a href="/myArt">작품 관리</a></li>
	            			<li><a href="#">포인트 충전</a></li>
	            			<li><a href="#">주문 정보</a></li>
	            		</ul>
	               	</div>
               	</div>
			</c:if>	 
            </div>
            
        <div class="menuList">
            <a href="/artist">Artists</a>
            <a href="/exhibitionList">Exhibition</a>
            <a href="/picture">Painting & Photo</a>
          <%--   <img src="<c:url value='/images/exh_menu_icon.png'/>" class="icon"> --%>
        </div>
        </div>
    </div>
    
</header>
<div id="headerHeight"></div> <!-- 헤더 높이 div -->
<div id="upBtnBox">
	<a href="#">
		<button id="upBtn">top</button>
	</a>
</div>
	    