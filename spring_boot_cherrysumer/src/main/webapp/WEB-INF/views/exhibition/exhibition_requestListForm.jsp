<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전시회 신청 관리자 페이지</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition_requestList.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/exhibition_requestConfirm.js'/>"></script> <!-- 실제 효과가 있었는지 모를.. 없었던 것 같은 Ajax 비동기 -->
		<script src="<c:url value='/js/exhibition_requestConfirmPaging.js'/>"></script> <!-- 게시판 페이징 -->
	</head>
	<body>
		<c:import url = "/WEB-INF/views/layout/top.jsp"/>
		<div id= "wrap">
			<h2>전시회 신청 관리자 페이지</h2>
				<div id="tableBackground">
					<table class="pagingTable">
						<tr class="columnTitle">
							<td rowspan="2">신청 번호</td><td rowspan="2">회원 ID</td><td rowspan="2">작가 성명</td><td rowspan="2">전시회 제목</td><td colspan="2">전시일</td><td rowspan="2">승인 여부</td>
						</tr>
						<tr class="columnTitle">
							<td>시작일</td><td>종료일</td>
						</tr>
						<c:forEach var="exhb" items="${exhList }">
						<form method="post" action="/exhibition/adminConfirm">
							<tr class="pagingTr">
								
									<td>${exhb.exhNo} <input type="hidden" name="exhNo" value="${exhb.exhNo}" /></td>						
									<td>${exhb.memId }</td>
									<td>${exhb.memName }</td>
									<td>${exhb.exhTitle_kr}</td>
									<td><fmt:formatDate var="date" value="${exhb.exhStartDate }" pattern="yyyy. MM. dd" /> ${date }</td>
									<td><fmt:formatDate var="date" value="${exhb.exhEndDate }" pattern="yyyy. MM. dd" /> ${date }</td>
									<td>
										<select id="exhConfirm" name="exhConfirm" style="text-align:center;" >										
											<c:if test="${exhb.exhConfirm != 1 && exhb.exhConfirm != 2 && exhb.exhConfirm != 3 }"> 	
												<option value="" selected></option>
											</c:if>
						       				<c:if test="${exhb.exhConfirm eq 1 }"> 
												<option value="1" selected> 미승인 </option>
											</c:if>
											<c:if test="${exhb.exhConfirm ne 1 }"> 
												<option value="1"> 미승인 </option>
											</c:if>
											
											<c:if test="${exhb.exhConfirm eq 2 }"> 
												<option value="2" selected> 승인 </option>
											</c:if>
											<c:if test="${exhb.exhConfirm ne 2 }"> 
												<option value="2"> 승인 </option>
											</c:if>
											
											<c:if test="${exhb.exhConfirm eq 3 }"> 
												<option value="3" selected> 대표 이미지 </option>
											</c:if>
											<c:if test="${exhb.exhConfirm ne 3 }"> 
												<option value="3"> 대표 이미지 </option>
											</c:if>						        								        		
							        	</select>
							        </td>
							        <td>
							        <input type="submit" value="저장">	
							        <!-- submit하면 form 전체가 감. 버튼으로 해줘야함. -->
							        </td>
							   
							</tr>
							 </form>	
							
						</c:forEach>
					</table>
					<div id="pageNum">
						<nav aria-label="Page navigation example">
							<ul class="pagination pagination-seperated "></ul>
						</nav>
					</div>
				</div>
			<form id="exhSearchFrm">
				<select id="type" name="type">
					<option value=""> 검색 조건 선택 </option>
					<option value="exhConfirm"> 관리자 승인 필요 </option>
				</select>
				<input type = "text" name = "keyword">
				<input type = "submit" value = "검색">
			</form>
			
			<!-- 검색 결과 출력 -->
			<div id="searchResultBox"></div>
		</div>
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	</body>
</html>