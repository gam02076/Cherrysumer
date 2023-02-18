<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/customer.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/bottom.css'/>">
<style>
#wrap {
	margin: auto;
	width: 100%;
	text-align: center;
	background-image: url("/images/pink.png");
	background-size: 100% 100%;
	background-attachment: fixed;
	overflow: hidden;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	text-align: left;
}

#text {
	width: 500px;
	height: 500px;
}

#title {
	width: 200px;
}

tr {
	border-top-style: dashed;
}

textarea {
	width: 500px;
	height: 500px;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<div id="wrap">
		<br /> <br />
		<div>
			<form method="post" action="<c:url value='/cutomer/cutomerupdate'/>">
				<table>
				<tr>
						<td id="title">번호</td>
						<td><input type="text" name="cusNo" id="cusNo" value="${cus.cusNo }" readonly></td>
					</tr>
					<tr>
						<td id="title">제목</td>
						<td><input type="text" name="custitle" id="custitle" value="${cus.custitle }"></td>
					</tr>
					<tr>
						<td id="title">작성자</td>
						<td><input type="text" name="memId" id="memId" value="${cus.memId }" readonly></td>
					</tr>
					<tr>
						<td id="title">내용</td>
						<td id="text"><textarea name="custext" id="custext">${cus.custext }</textarea></td>
					</tr>
					<tr>
						<td id="title">작성날짜</td>
						<td><input type="text" name="cusdate" id="cusdate" value="${cus.cusdate }" readonly></td>
					</tr>
					<tr>
						<td id="title">공개여부</td>
						<td><input type="text" name="cusabc" id="cusabc" value="${cus.cusabc }" readonly></td>
					</tr>
                <tr><td colspan="2"><input type="submit" value="등록"> 
										<input type="reset" value="취소"></td></tr>
										</table>
			</form>
			<br> <br>
		</div>
	</div>
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
</body>
</html>