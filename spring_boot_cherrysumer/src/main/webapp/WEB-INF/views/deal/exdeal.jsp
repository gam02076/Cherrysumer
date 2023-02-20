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

<title>구매 결제 페이지</title>
</head>
<body style="margin: 0 5%;">
	<c:import url="/WEB-INF/views/layout/top.jsp" />

	<div class="conteiner">

		<form id="dealcheckinsert" action="dealcheckinsert" method="post"
			enctype="multipart/form-data">
			<h2 class="headtitle">구매하실 작품을 확인 해주세요.</h2>

			<hr>

			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="<c:url value='/images/${deal.artImg }'/>" alt="img"
						id="preview" />
				</div>

				<table class="tb">

					<tr>
						<th>작품명</th>
						<td>${deal.artName_kr}</td>
						<th>ID</th>
						<td>${sessionScope.sid}</td>
						<input type="hidden" name="buypicNo" value="${deal.artNo}">
					
					</tr>
					<tr>
						<th>소재/기법</th>
						<td>${deal.ctgId}</td>
						<th>작가명</th>
						<td>${mem.memName}</td>

					</tr>
					<tr>
						<th>사이즈</th>
						<td>${deal.artSize}</td>
						<th>가격</th>
					
						<td>${deal.artPrice}원</td>
					</tr>
					<tr>
						<td></td>
						<td><label>실물<input type="radio" name="picType"
								value="1"></label> <label>Email<input type="radio"
								name="picType" value="2"></label></td>
					</tr>
				</table>

			</div>
			<hr>

			<div class="infobox">

				<div class="buyerbox1">
					<h3 class="infotitle">구매자 정보</h3>
					<ul>
						<li class="buyerinfo_list"><span class="meminfo">이름</span>
							<div>${vo1.memId}</div></li>

						<li class="buyerinfo_list"><span class="meminfo">연락처</span>
							<div>${vo1.memHP}</div></li>

						<li class="buyerinfo_list"><span class="meminfo">이메일</span>
							<div>${vo1.memEmail }</div></li>

						<li class="buyerinfo_list"><span class="meminfo">주소</span>
							<div>
								${vo1.memAddress1} <br> ${vo1.memAddress2}
							</div></li>

					</ul>

				</div>

					<div class="buyerbox">
							<h3 class="infotitle">배송지 정보</h3>
						<ul>
							<li class="buyerinfo_list"><span class="meminfo">받으시는
									분</span> <input type="text" name="buyerName" class="underline"
								id="buyerName">
								<div></div></li>

							<li class="buyerinfo_list"><span class="meminfo">연락처</span>
								<input type="text" name="buyerHP" class="underline" id="buyerHP">
								<div></div></li>

							<li class="buyerinfo_list"><span class="meminfo">이메일</span>
								<input type="text" name=buyerEmail class="underline"
								id="buyerEmail">
								<div></div></li>

							<li class="buyerinfo_list"><span class="meminfo">주소</span>
								<div>
									<span class="input_area"><input type="text"
										name="buyerZipcode" class="postcodify_postcode underline"
										id="buyerZipcode" readonly></span> <br> <span
										class="input_area"><input type="text"
										name="buyeraddress1" class="postcodify_address underline"
										id="buyeraddress1" readonly></span> <br> <span
										class="input_area"><input type="text"
										name="buyeraddress2" class="postcodify_details underline"
										id="buyeraddress2"></span>
								</div>

								<div>
									<button type="button" id="searchpost">검색</button>
								</div></li>

						</ul>
					</div>

				</div>
	

			<hr>

			<div class="buyerinfo">

				<h2 class="infotitle">배송비 +3000원</h2>

			</div>

			<hr>
<div>
			<div class="total"><h1>총 결제 금액:${deal.artPrice+3000}원</h1></div>
			<input type="hidden" name="totalamount" value="${deal.artPrice+3000}">
			<div class="buybtn">
			<button type="submit" value="등록" id="btn-kakaopay"
				onclick="btn-kakaopay">구매하기</button></div>
			<hr>
</div>
		</form>
</body>

<script>
	$(function() {
		$('#kakaobtn').click(function() {
			$.ajax({
				url : 'kakaopay',
				dataType : "json", /* "picPrice":$('#picPrice').val(), */
				success : function(data) {
					// alert(resp.tid); //결제 고유 번호
					var box = resp.next_redirect_pc_url;
					window.open(box);
					alert("결제가 완료 되었습니다.");
					location.href = box;

				},
				error : function(error) {
					alert(error);
				}

			});
		});
	});
</script>


<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/deal/kakao.js'/>"></script>
<!-- 주소 API 스크립트 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "
								검색" 단추를 누르면 팝업 레이어가 열리도록설정한다 -->
<script>
	$(function() {
		$("#searchpost").postcodifyPopUp();
	});
</script>
</html>