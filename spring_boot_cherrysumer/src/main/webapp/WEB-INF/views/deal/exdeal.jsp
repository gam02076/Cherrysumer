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
<c:import url="/WEB-INF/views/layout/head.jsp" />
<title>구매 결제 페이지</title>
</head>
<body id="bdone">
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<div class="conteiner">

		<form id="dealcheckinsert">
			<h2 class="headtitle">구매하실 작품을 확인 해주세요.</h2>

			<hr>

			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="<c:url value='/images/${deal.artImg }'/>" alt="img"
						id="preview" />
				</div>

				<table class="tb" style="width: 50%; padding: 25px 0;">

					<tr>
						<th>작품명</th>
						<td>${deal.artName_kr}</td>
						<th>ID</th>
						<td>${sessionScope.sid}<input type="hidden" name="buypicNo"
							value="${deal.artNo}"></td>
						<input type="hidden" name="picNo" value="${deal.artNo}">
						<input type="hidden" id="picName" value="${deal.artName_kr}">
						

					</tr>
					<tr>
						<th>소재/기법</th>
						<td>${deal.ctgId}</td>
						<th>작가명</th>
						<td>신명숙</td>

					</tr>
					<tr>
						<th>사이즈</th>
						<td>${deal.artSize}</td>
						<th>가격</th>

						<td>${deal.artPrice}원</td>
					</tr>
					<tr>
						<td colspan="4">배송비 3000원이 추가됩니다.</td>
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

				<h3 class="infotitle">배송지 정보</h3>
			<div class="buyerbox">
				<ul>
					<li class="buyerinfo_list"><span class="meminfo">받으시는 분</span>
						<input type="text" name="buyerName" class="underline"
						id="buyerName" value="${vo1.memId}"></li>

					<li class="buyerinfo_list"><span class="meminfo">연락처</span> <input
						type="text" name="buyerHP" class="underline" id="buyerHP"
						value="${vo1.memHP}"></li>

					<li class="buyerinfo_list"><span class="meminfo">이메일</span> <input
						type="text" name=buyerEmail class="underline" id="buyerEmail"
						value="${vo1.memEmail }"></li>

					<li class="buyerinfo_list"><span class="meminfo">주소</span>
						<div id="adad">
							<span class="input_area"><input type="text"
								name="buyerZipcode" class="postcodify_postcode addresss"
								id="buyerZipcode" value="${vo1.memZipcode}" readonly></span> <br>
							<span class="input_area"><input type="text"
								name="buyeraddress1" class="postcodify_address addresss"
								id="buyeraddress1" value="${vo1.memAddress1}" readonly></span> <br>
							<span class="input_area"><input type="text"
								name="buyeraddress2" class="postcodify_details addresss"
								id="buyeraddress2" value="${vo1.memAddress2}"></span>
				<span>
							<button type="button" id="searchpost" class="dealbtn">검색</button>
						</span>
						</div>


				</ul>
			</div>
			<hr>
			<h3 class="infotitle">결제 수단</h3>
			<div class="select">
				<input type="radio" class="dealCtg" id="select" name="payment" value="카카오">
				<label for="select"><img src="<c:url value="/images/kakao.jpg"/>"></label> <input type="radio" id="select2"
					name="payment" value="토스"> <label for="select2" ><img src="<c:url value="/images/toss.jpg"/>"></label>
				<input type="radio" id="select3" name="payment" value="다날">
				<label for="select3"><img src="<c:url value="/images/danal.jpg"/>"></label> <input type="radio" id="select4"
					name="payment" value="페이코"> <label for="select4"><img src="<c:url value="/images/payco.jpg"/>"></label>
			</div>

			<!-- </div> -->


			<!-- <div class="buyerinfo">

				<h2 class="infotitle">배송비 +3000원</h2>

			</div> -->

			<hr>
				<input type="hidden" name="totalamount"
					value="${deal.artPrice+3000}" id="pictotal">
			<div id="totalDealBar">
			<sapn id="tdb1">
				총 결제 금액:  ${deal.artPrice+3000} 원
				</sapn>
				<span id="tdb2">
				<button type="submit" value="등록" id="btn-kakaopay" class="dealbtn" onclick="dealCheck()">결제하기</button></span>
			</div>
		</form>
	</div>
</body>

<c:import url="/WEB-INF/views/layout/bottom.jsp" />


<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="<c:url value='/js/kakaoDeal.js'/>"></script>
<script src="<c:url value='/js/deal/deal.js'/>"></script>
<!-- 주소 API 스크립트 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록설정한다 -->
<script>
	$(function() {
		$("#searchpost").postcodifyPopUp();
	});
</script>




</html>