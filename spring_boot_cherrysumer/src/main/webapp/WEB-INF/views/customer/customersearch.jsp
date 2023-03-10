<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="<c:url value='/js/customersearch.js' />"></script>
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css'/>">
</head>
<style>
	#warp{
				margin:0 auto;
				width: 100%;
				height:100%;
				text-align: center;
					background-image: url("../images/꽃그림.jpg");        
	background-size : 100% 100%;
	background-attachment: fixed;
			}
	
			
			table{
				margin:0 auto;
				border-collapse: collapse;
				text-align: center;
			}
			th{
			height:70px;
			border-top:3px solid black;
			border-bottom:1px solid black;
			background-color:#FFEBF0;
			text-align: center;
			}
			td{
			height:70px;
			border-bottom:1px solid black;
			}	
	a {
		text-decoration: none;
	}
	a:hover{
	  color:red;
	}
	#list{
	margin-right:80px;
	}
	#outter{
	}
</style>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
<body>
<div id="warp">
                            
<div id="outter">
	<br/>
	<div id="board-list" style="clear:both;">
	<div class="container">
	<table class="board-table">
		<tr>
<th style="width:100px">번호</th>
<th style="width:500px">제목</th>
<th style="width:300px">등록일</th>
<th style="width:100px">공개글 여부</th>
<th style="width:200px">아이디</th>
		</tr>
		<c:forEach items="${viewAll }" var="list">
			<tr>
				<td>${list.cusNo }</td>
				<td><a href='/customer/customerdetailview/${list.cusNo }'>${list.custitle }</a></td>
				<td>${list.cusdate }</td>
				<td>${list.cusabc }</td>
				<td>${list.memId }</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
</div>
</div>
</body>
</html>