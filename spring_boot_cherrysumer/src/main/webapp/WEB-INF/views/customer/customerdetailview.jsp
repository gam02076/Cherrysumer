<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css'/>">
		<style>
			#wrap{
				margin:auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				border-collapse: collapse;
				text-align: left;
			}	
			#text{
			width:500px;
			height:500px;
			}
			#title{
			width:200px;
			}
			tr{
			border-top-style: dashed;
			}
			#reply{
			margin:auto;
			width:700px;
			border-top-style: dashed;
			border-bottom-style: dashed;
			}
		</style>
</head>
<body>
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
<c:import url = "/WEB-INF/views/layout/top.jsp"/>
<br/><br/>
<div id="wrap">
<div>
			<table> <tr><td id="title">제목</td><td>${cus.custitle }</td></tr>
					<tr><td id="title">작성자</td><td>${cus.memId }</td></tr>
					<tr><td id="title">내용</td><td id="text">${cus.custext } </td></tr>
					<tr><td id="title">작성날짜</td><td>${cus.cusdate }</td></tr>
					<tr><td id="title">공개여부</td><td> ${cus.cusabc }</td></tr>	
				</table><br><br>
				<h2>전체 댓글</h2>
				<div>
<c:forEach items="${reply}" var="reply">
<table>
<tr><td style="width:100px;">${reply.writer}</td><td style="width:500px;">${reply.content }</td><td style="width:100px;">${reply.regDate}</td>
<td style="width:50px;"><a href="javascript:udateCheck('${memId}', '${reply.writer}','${reply.cusNo}','${reply.rno}');">수정</a></td>
<td style="width:50px;"><a href="javascript:deleteCheck('${memId}', '${reply.writer}','${reply.cusNo}','${reply.rno}');">삭제</a></td></tr>
</table>	
</c:forEach>
<br/><br/><br/><br/>
<h2>댓글 작성하기</h2>
<div id="reply">
	<form method="post" action="/write">
	
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer" value="${memId}" readonly>
			<label>작성 날짜</label> <input type="text" name="regDate" value="${time1}" readonly>
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
		<input type="hidden" name="cusNo" value="${cus.cusNo}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	</div>
	
</div>
				<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
				
				<a href="<c:url value='/boardList'/>">뒤로가기</a><br><br>
				
		</div>
		</div>
</body>

</html>