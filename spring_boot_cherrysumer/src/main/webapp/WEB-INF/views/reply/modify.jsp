<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/reply/modify">

	<p>
		<label>댓글 작성자</label> <input type="text" name="writer" readonly="readonly" value="${reply.writer}">
		<label>수정 날짜</label> <input type="text" name="regDate" readonly="readonly" value="${reply.regDate}">
	</p>
	<p>
		<textarea rows="5" cols="50" name="content">${reply.content}</textarea>
	</p>
	<p>
		<input type="hidden" name="cusNo" value="${reply.cusNo}">
		<input type="hidden" name="rno" value="${reply.rno}">

		<button type="submit">댓글 수정</button>
	</p>
</form>
</body>
</html>