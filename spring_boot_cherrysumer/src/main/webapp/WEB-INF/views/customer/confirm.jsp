<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h2>게시물 비밀번호 입력</h2>
<form method="post" action="<c:url value='/confirm2/${cusNo}' />">
<input type="text" id="cus2" name="cus2">
<input type="submit" value="등록">
<input type="reset" value="취소">
</form>
</div>

</body>
</html>