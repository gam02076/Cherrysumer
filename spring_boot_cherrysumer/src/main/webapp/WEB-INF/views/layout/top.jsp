<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <div class="header">
        <a href="/"><img src="<c:url value='/image/logo(text2).png'/>" class="logo"></a>
        <div id="headerRight">
        <div class="menuList" id="memList">
        	<c:if test="${empty sessionScope.sid }">
					<a class="header-item" href="/member/login">로그인</a>
					<a class="header-item" href="/member/signup">회원가입</a>
			</c:if>
	
			<c:if test="${not empty sessionScope.sid }">
					${sessionScope.sid}님 
					<a class="header-item" href="/member/logout">로그아웃</a> 
					<a class="header-item" href="/Mypage">마이페이지</a>
			</c:if>	 
            </div>
            
        <div class="menuList" style="margin-top:40px;">
            <a href="/artist">Artists</a>
            <a href="/exhibitionList">Exhibition</a>
            <a href="/picture">Painting & Photo</a>
          <%--   <img src="<c:url value='/image/exh_menu_icon.png'/>" class="icon"> --%>
        </div>
        </div>
    </div>
</header>
<div id="headerHeight"></div> <!-- 헤더 높이 div -->
	    