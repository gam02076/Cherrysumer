<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<script type="text/javascript">
					function udateCheck(memId, writer, cusNo, rno){
						var id=memId;
						var writer=writer;
						var cusNo=cusNo;
						var rno=rno;
					
					if(id==writer){
						confirm("수정하시겠습니까?");
						location.href="http://localhost:8080/modify?cusNo="+cusNo+"&rno="+rno+"";
					}else{
						alert("본인의 댓글이 아닙니다")
					}
					
					
					}
					function deleteCheck(memId, writer, cusNo, rno){
						var id=memId;
						var writer=writer;
						var cusNo=cusNo;
						var rno=rno;
					
					if(id==writer){
						confirm("삭제하시겠습니까?");
						location.href="http://localhost:8080/delete2?cusNo="+cusNo+"&rno="+rno+"";
						
					}else{
						alert("본인의 댓글이 아닙니다")
					}
					}
					</script>
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
			<c:import url="/WEB-INF/views/layout/top.jsp" />
		</div>
		<br />
		<br />
		<div>
			<table>
			<tr><th>게시물번호</th><th>아이디</th><th>내용</th><th>날짜</th><th>수정</th><th>삭제</th></tr>
				<c:forEach var="rep" items="${rep}">
<tr><td style="width:100px;"><a
							href="<c:url value='/customer/customerdetailview/${rep.cusNo }' />">${rep.cusNo }</a></td>
<td style="width:100px;">${rep.writer}</td>
<td style="width:500px;">${rep.content }</td>
<td style="width:100px;">${rep.regDate}</td>
<td><a href="javascript:udateCheck('${memId}', '${rep.writer}','${rep.cusNo}','${rep.rno}');"><input
								type="button" value="수정하기"></a></td>
<td><a href="javascript:deleteCheck('${memId}', '${rep.writer}','${rep.cusNo}','${rep.rno}');"><input
								type="button" value="삭제하기"></a></td>
</tr>

				</c:forEach>
			</table>
		</div>
		<script>
			function deleteCheck4() {
				var answer = confirm("삭제하시겠습니까?");
				if (answer) {
					location.href = "/delete2";
				}
			}
		</script>
	</div>
	<c:import url = "/WEB-INF/views/layout/bottom.jsp"/><br/>
</body>
</html>