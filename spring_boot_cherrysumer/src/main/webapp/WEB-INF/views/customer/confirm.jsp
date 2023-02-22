<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />

<style>
#wrap{
width:100%;
height:300px;
text-align: center;
}
#form2{
margin:auto;
height:100%;
}
h2{
margin-top:130px;
}
#form{
margin-top:50px;
}
</style>
</head>
<body>
<div id="wrap">
<div id="form2">
<h2>게시물 비밀번호 입력</h2>
<form id="form" method="post" action="<c:url value='/confirm2/${cusNo}' />">
<input type="text" id="cus2" name="cus2">
<input type="submit" value="등록">
<a href="<c:url value='/boardList'/>"><input type="reset" value="취소"></a>
</form>
</div>
<c:import url = "/WEB-INF/views/layout/bottom.jsp"/>
</div>
</body>
</html>