<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>UploadResultView</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
	</head>
	<body>
		<c:import url = "/WEB-INF/views/layout/top.jsp"/>
		exhibition_UploadResultView 페이지입니다.
		<table border="1">
			<tr>
				<td rowspan="2">신청 날짜</td><td rowspan="2">신청 번호</td><td rowspan="2">작가 이름</td><td rowspan="2">회원 ID</td><td rowspan="2">전시회 제목</td><td colspan="2">전시일</td><td rowspan="2">승인 여부</td><td rowspan="2">미리보기</td>
			</tr>
			<tr>
				<td>시작일</td><td>종료일</td>
			</tr>
			<tr>
				<td>${rInfoVo.musicalDate}
			</tr>
		</table>
	</body>
</html>