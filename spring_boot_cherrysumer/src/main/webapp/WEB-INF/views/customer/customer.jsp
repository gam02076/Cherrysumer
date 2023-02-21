<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/customer.css'/>">
	<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/bottom.css'/>">
<style>
#wrap {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	text-align: center;
	background-image: url("/images/꽃그림.jpg");
	background-size: 100% 100%;
	background-attachment: fixed;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
}

th {
	height: 70px;
	border-top: 3px solid black;
	border-bottom: 1px solid black;
	background-color: #FFEBF0;
}

td {
	height: 70px;
	border-bottom: 1px solid black;
}

a {
	text-decoration-line: none;
}
</style>
</head>
<body>
	<div id="wrap">

		<div>
		</div>
		<br />
		<br />
		<div>
			<table>
				<tr>
					<th style="width: 100px">번호</th>
					<th style="width: 300px">제목</th>
					<th style="width: 300px">등록일</th>
					<th style="width: 100px">공개글 여부</th>
					<th style="width: 200px">아이디</th>
					<th style="width: 100px">수정</th>
					<th style="width: 100px">삭제</th>
				</tr>
				<c:forEach var="cus" items="${cusList}">
					<tr>
						<td><a
							href="<c:url value='/customer/customerdetailview/${cus.cusNo }' />">${cus.cusNo }</a></td>
						<td>${cus.custitle }</td>
						<td>${cus.cusdate }</td>
						<td>${cus.cusabc}</td>
						<td>${cus.memId}</td>
						<td><a
							href="<c:url value='/custumer/custumer/${cus.cusNo }'/>"><input
								type="button" value="수정하기"></a></td>
						<td><a href="javascript:deleteCheck2('${cus.cusNo }');"><input
								type="button" value="삭제하기"></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<script>
			function deleteCheck2(cusNo) {
				var answer = confirm("삭제하시겠습니까?");
				if (answer) {
					location.href = "/custumer/deletecustumer/?cusNo=" + cusNo
							+ "";
				}
			}
		</script>
	</div>
	<c:import url = "/WEB-INF/views/layout/bottom.jsp"/><br/>
</body>
</html>