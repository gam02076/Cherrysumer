<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/deal/deal.css'/>">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/picture/register.css'/>">
<title>Insert title here</title>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />


<div class="conteiner">
	<h2 class="headtitle">구매하실 작품을 확인 해주세요.</h2>

	<hr>

			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="<c:url value='/image/${deal.picimg }'/>" alt="img" id="preview"/>
				</div>
				
					<table>
					
						<tr>
							<th>작품명</th>
							<td>${deal.picTitle}</td>
							<th>ID</th>
							<td>멤아이디</td>
						</tr>
												<tr>
							<th>소재/기법</th>
							<td>${deal.pictech}</td>
							<th>작가명</th>
							<td>${deal.picauthor}</td>
						</tr>
						<tr>
							<th>사이즈</th>
							<td>${deal.picSize}</td>
							<th>가격</th>
							<td>${deal.picPrice}</td> 
						</tr>
						<tr>
							<td></td>
							<td><label>실물<input type="radio" name="picType" value="1"></label>
								<label>Email<input type="radio" name="picType" value="2"></label>
								</td>
						</tr>
					</table>

	</div>
	<hr>

	<div class="buyerinfo">
		<h3 class="infotitle">구매자 정보</h3>

	

		<span style="grid-column: 2; grid-row: 2; text-align: right;">이름:<input type="text" maxlength="5" name="" id="">	<button>수정</button></span>
		
		<span style="grid-column: 4; grid-row: 2; text-align: right;">연락처:<input type="tel" maxlength="11"name="" id="" placeholder="ex) 01012345678">		<button>수정</button></span>
	
		<span style="grid-column: 2; grid-row: 4; text-align: right;">이메일:<input type="email" name="" id="">	<button>수정</button></span>
		
		<span style="grid-column: 4; grid-row: 4; text-align: right; margin-bottom: 4px;">우편번호:<input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" readonly>	<button type="button" id="postcodify_search_button">검색</button></span>
		
		<span  style="grid-column: 2; grid-row: 3; ">&nbsp;</span>	
	
		<span style="grid-column: 4; grid-row: 5; text-align: right; margin-bottom: 4px;">도로명주소:<input type="text" name="" class="" id="" readonly> <button>수정</button></span>

		<span style="grid-column: 4; grid-row: 6; text-align: right; margin-bottom: 4px; position: relative; right: 43px; ">상세주소:<input type="text" name="" class="" id=""></span>
	</div>
	
	<hr>

		<div class="buyerinfo">
		
		
		
		<h3 class="infotitle">배송지 정보</h3>
		
		<span style="grid-column: 2; grid-row: 2; text-align: right; position: relative; right: 43px; ">받으시는 분:<input type="text" maxlength="5" name="" id="">	</span>
		
		<span style="grid-column: 4; grid-row: 2; text-align: right; position: relative; right: 43px;" >연락처:<input type="tel" maxlength="11"name="" id="" placeholder="ex) 01012345678"> </span>
	
		<span style="grid-column: 2; grid-row: 4; text-align: right; position: relative; right: 43px;">이메일:<input type="email" name="" id=""></span>
		
		<span style="grid-column: 4; grid-row: 4; text-align: right; margin-bottom: 4px;">우편번호:<input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" readonly>	<button type="button" id="postcodify_search_button">검색</button></span>
		
		<span  style="grid-column: 2; grid-row: 3; ">&nbsp;</span>	
	
		<span style="grid-column: 4; grid-row: 5; text-align: right; margin-bottom: 4px; position: relative; right: 43px; ">도로명주소:<input type="text" name="" class="" id="" readonly></span>

		<span style="grid-column: 4; grid-row: 6; text-align: right; margin-bottom: 4px; position: relative; right: 43px; ">상세주소:<input type="text" name="" class="" id=""></span>

	</div>
	
	<hr>
	
	<div class="buyerinfo">
	
	<h3 class="infotitle">배송비</h3>
	
		<span style="    grid-column: 2;
    grid-row: 1;
    text-align: right;
    position: relative;
    text-align: center;
    font-size: 16px;
    top: 21px;
}">배송비:+3000원</span>
		
		<span style="grid-column: 4; grid-row: 2; text-align: right; position: relative; right: 43px;" >제주/도서산간:+5000원</span>
	</div>
	
	<hr>
	
	<h1>총 결제 금액:</h1>
	<hr>
	</div>
</body>

<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
</html>