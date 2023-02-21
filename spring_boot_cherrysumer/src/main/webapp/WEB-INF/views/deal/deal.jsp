<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<c:import url="/WEB-INF/views/layout/head.jsp" />
<title>구매 결제 페이지</title>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<div class="conteiner">

		<form id="dealcheckinsert">
			<h2 class="headtitle">구매하실 작품을 확인 해주세요.</h2>

			<hr>

			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="<c:url value='/images/${deal.picimg }'/>" alt="img"
						id="preview" />
				</div>

				<table class="tb">

					<tr>
						<th>작품명</th>
						<td>${deal.picTitle}</td>
						<th>ID</th>
						<td>${sessionScope.sid}<input type="hidden" name="memId"
							value="${sessionScope.sid}"></td>
						<input type="hidden" name="picNo" value="${deal.picNo}">
						<input type="hidden" id="picName" value="${deal.picTitle}">
						<input type="hidden" id="picType" value="${deal.picType}">

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

						<td>${deal.picPrice}원</td>
					</tr>
					<tr>
						<td rowspan="2">배송비 3000원이 추가됩니다.</td>
					</tr>
				</table>

			</div>
			<hr>

			<!-- <div class="infobox"> -->

			<%-- <div class="buyerbox1">
					<h3 class="infotitle">구매자 정보</h3>
					<ul>
						<li class="buyerinfo_list"><span class="meminfo">이름</span>
							<div>${vo.memId}</div></li>

						<li class="buyerinfo_list"><span class="meminfo">연락처</span>
							<div>${vo.memHP}</div></li>

						<li class="buyerinfo_list"><span class="meminfo">이메일</span>
							<div>${vo.memEmail }</div></li>

						<li class="buyerinfo_list"><span class="meminfo">주소</span>
							<div>
								${vo.memAddress1} <br> ${vo.memAddress2}
							</div></li>

					</ul>

				</div> --%>

			<div class="buyerbox">
				<h3 class="infotitle">배송지 정보</h3>
				<ul>
					<li class="buyerinfo_list"><span class="meminfo">받으시는 분</span>
						<input type="text" name="buyerName" class="underline"
						id="buyerName" value="${vo.memId}"></li>

					<li class="buyerinfo_list"><span class="meminfo">연락처</span> <input
						type="text" name="buyerHP" class="underline" id="buyerHP"
						value="${vo.memHP}"></li>

					<li class="buyerinfo_list"><span class="meminfo">이메일</span> <input
						type="text" name=buyerEmail class="underline" id="buyerEmail"
						value="${vo.memEmail }"></li>

					<li class="buyerinfo_list"><span class="meminfo">주소</span>
						<div>
							<span class="input_area"><input type="text"
								name="buyerZipcode" class="postcodify_postcode underline"
								id="buyerZipcode" value="${vo.memZipcode}" readonly></span> <br>
							<span class="input_area"><input type="text"
								name="buyeraddress1" class="postcodify_address underline"
								id="buyeraddress1" value="${vo.memAddress1}" readonly></span> <br>
							<span class="input_area"><input type="text"
								name="buyeraddress2" class="postcodify_details underline"
								id="buyeraddress2" value="${vo.memAddress2}"></span>
						</div>

						<div>
							<button type="button" id="searchpost">검색</button>
						</div></li>

				</ul>
			</div>

			<!-- </div> -->


			<hr>
			<div class="select">
				<input type="radio" id="select" name="payment" value="카카오">
				<label for="select">카카오</label> <input type="radio" id="select2"
					name="payment" value="토스"> <label for="select2">토스</label>
				<input type="radio" id="select3" name="payment" value="다날">
				<label for="select3">다날</label> <input type="radio" id="select4"
					name="payment" value="페이코"> <label for="select4">페이코</label>
			</div>

			<!-- <div class="buyerinfo">

				<h2 class="infotitle">배송비 +3000원</h2>

			</div> -->

			<hr>
				<input type="hidden" name="totalamount"
					value="${deal.picPrice+3000}" id="pictotal">
		</form>
	</div>
			<div id="totalDealBar">
			<sapn id="tdb1">
				총 결제 금액:${deal.picPrice+3000}원
				</sapn>
				<span id="tdb2">
				<button type="submit" value="등록" id="btn-kakaopay"
					onclick="dealCheck();">결제하기</button></span>
			</div>
</body>

<c:import url="/WEB-INF/views/layout/bottom.jsp" />


<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="<c:url value='/js/kakaoDeal.js'/>"></script>
<%-- <script src="<c:url value='/js/deal/deal.js'/>"></script> --%>
<!-- 주소 API 스크립트 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록설정한다 -->
<script>
	$(function() {
		$("#searchpost").postcodifyPopUp();
	});
</script>




<script>
	let sf = document.getElementById("deal");
	sf.addEventListener("submit", function(e) {

		if (buyerName.value.length == 0) {
			alert('받으시는 분 성함을 입력하세요.');
			e.preventDefault();
		} else if (buyerHP.value.length == 0) {
			alert('받으시는 분 연락처를 입력하세요.');
			e.preventDefault();
		} else if (buyerEmail.value.length == 0) {
			alert('Email을 입력하세요.');
			e.preventDefault();
		} else if (buyerHP.value.length == 0) {
			alert('연락처를 입력하세요.');
			e.preventDefault();
		} else if (buyerZipcode.value.length == 0) {
			alert('우편번호를 입력하세요.');
			e.preventDefault();
		} else if (buyeraddress1.value.length == 0) {
			alert('주소 등록하세요.');
			e.preventDefault();
		} else if (buyeraddress2.value.length == 0) {
			alert('상세주소를 설명해주세요.');
			e.preventDefault();
		} else {
			alert('결제가 완료되었습니다.');
		}
	});
</script>












</html>