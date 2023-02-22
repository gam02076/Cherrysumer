<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/admin/PhotoFilter.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/admin/picCheck.css' />">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/admin/photoFilter.js' />"></script>
</head>
<body>
<div id="asdf">
	<input type="button" value="새로고침" class="checkBtn" id="redirect">
	<a href="<c:url value='/'/>">메인페이지로 이동</a><br><br>
	</div>
	<div id="wrap">
		<table id="filterTb">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>사진명</th>
				<th>사진 번호</th>
				<th>승인 여부(N/Y)</th>
			</tr>
			<c:forEach var="pic" items="${pic }">
				<tr>
					<td>${pic.memId}</td>
					<td>${pic.picTitle}</td>
					<td><a href="" class="picImg" id="${pic.picimg}">${pic.picimg}</a></td>
					<td>${pic.picNo}</td>
					<td><input type="button" value="N" class="checkBtn" onclick="nopass(${pic.picNo})"><input
						type="button" value="Y" class="checkBtn" onclick="pass(${pic.picNo})"></td>
				</tr>
			</c:forEach>
		</table>

	</div>

	<!-- 모달 창 -->
	<div class="modal">
		<!-- 모달 창 -->
		<!-- <div id="modal_content" title="클릭하면 창이 닫힘"></div> -->
	</div>

</body>
</html>