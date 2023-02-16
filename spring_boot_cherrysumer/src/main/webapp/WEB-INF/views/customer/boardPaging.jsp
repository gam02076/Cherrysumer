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
<script src="<c:url value='/js/customer.js' />"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css'/>">
</head>
<style>
	#warp{
	margin: auto;
	width: 100%;
	height:100%;
	text-align: center;
	background-image: url("../image/꽃그림.jpg");        
	background-size : 100% 100%;
	background-attachment: fixed;
			}
	
			
			table{
				margin: auto;
				border-collapse: collapse;
				text-align: center;
				font-family: Georgia;
				font-weight: 600;
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
	margin-right:110px;
	}
	#keyword{
	width:300px; 
	height:50px;
	border: 5px solid;
	border-radius: 30px;
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
<c:import url = "/WEB-INF/views/layout/top.jsp"/>
<div id="upBtnBox2">
		<button id="upBtn2" onclick="customerCheck(${memId});">글쓰기</button>
</div><br/>

<form action="">
                                <div class="search-wrap">
                                    <label for="search" class="blind">검색</label> 
                                    <input id="keyword" name="keyword" placeholder="검색어를 입력해주세요." value="">
                                    <button id="searchBtn" type="submit" class="btn btn-dark" >검색</button>
                                </div>
                            </form>
                            
<div id="outter">
	<div id="list" style="float: right;">
		<select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
		</select>
	</div> <!-- 옵션선택 끝 -->
	<br/>	<br/>
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
	
	<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/boardList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/boardList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/boardList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
		<c:import url = "/WEB-INF/views/layout/bottom.jsp"/><br/>
		
	</div>
</div>
</div>
</body>
</html>