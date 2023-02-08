<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css'/>">
</head>
<body>
<div id="warp">
<c:import url = "/WEB-INF/views/layout/top.jsp"/>
			<form method="post" action="<c:url value='/customerinsert2' />">
<br /><br />
<table>
					<tr><td>아이디 </td><td><input type="text" name="memId" id="memId" value="${memId}" readonly> </td></tr>
					<tr><td>제목  </td><td><input type="text" name="custitle" id="custitle" ></td></tr>
					<tr><td>날짜  </td><td><input type="text" name="cusdate" id="cusdate" value="${time1}" readonly></td></tr>
					<tr><td>내용 </td><td> <textarea name="custext" id="custext">	</textarea></td></tr>
					<tr><td>비공개</td><td> <input type="checkbox" name="cuspublic" id="cuspublic" ><label>비공개글로 작성</label></td></tr>
					<tr><td>비밀번호</td><td> <input type="text" name="cus" id="cus" ></td></tr>
					<tr><td colspan="2"><input type="submit" value="등록"> 
										<input type="reset" value="취소"></td></tr>
										</table>
										</form>
</div>
<script>
/*  $(document).ready(function() {
	$("#cus").hide();
 }); */
 $(document).ready(function() {
	 $("#cus").hide();
	 $("input:checkbox").on('click', function() {
	       if ( $(this).prop('checked') ) {
	    	   $("#cus").show();
	       } else {
	    	   $("#cus").hide();
	       }
	     });
	 });
</script>
</body>
</html>