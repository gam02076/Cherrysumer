<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	
<title>구매 결제 페이지 </title>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp" />


<div class="conteiner">
<form id="dealcheckinsert" action="dealcheckinsert" method="post" enctype="multipart/form-data" >
	<h2 class="headtitle">구매하실 작품을 확인 해주세요.</h2>

	<hr>

			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="<c:url value='/image/${deal.picimg }'/>" alt="img" id="preview"/>
				</div>
				
					<table >
					
						<tr>
							<th>작품명</th>
							<td>${deal.picTitle}</td>
							<th>ID</th>
							<td>${sessionScope.sid}</td>
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
					<input type="hidden" name="picPrice" value="${deal.picPrice}"> 
							<td>${deal.picPrice}원</td> 
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

	<table style="position: relative; left: 230px;" >
	<tr>
	<td></td>
	<td></td>
	<th style="text-align: end;">이름:</th>
	<td>${vo.memId}</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<th style="text-align: end;">연락처:</th>
	<td>${vo.memHP}</td>
	
	</tr>
	
		<tr>
	<td></td>
	<td></td>
	<th style="text-align: end;">이메일:</th>
	<td>${vo.memEmail }</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<th style="text-align: end;">주소:</th>
	<td>${vo.memAddress1} <br> ${vo.memAddress2}</td>
	
	</tr>
	

		
		</table>
		
		

	</div>
	
	<hr>

		<div class="buyerinfo">
		
		
		
		<h3 class="infotitle">배송지 정보</h3>
		
		<table style="position: relative; right: 210px;" >
	<tr>
	<td></td>
	<td></td>
	<th style="text-align: end;">받으시는 분:<input type="text" name="buyerName" class="underline" id="buyerName" ></th>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<th style="text-align: end;">연락처:<input type="text" name="buyerHP" class="underline" id="buyerHP" ></th>
	
	</tr>
	
		<tr>
	<td></td>
	<td></td>
	<th style="text-align: end;">이메일:<input type="text" name=buyerEmail class="underline" id="buyerEmail" ></th>
	
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<th style="text-align: end;">주소: 
	
	<span class="input_area"><input type="text" name="memZipcode" class="postcodify_postcode underline" id="memZipcode" readonly></span>
	<br>
	<span class="input_area"><input type="text" name="buyeraddress1" class="postcodify_address underline" id="buyeraddress1" readonly></span>
	<br>
	<span class="input_area"><input type="text" name="buyeraddress2" class="postcodify_details underline" id="buyeraddress2"></span>
						
	<td><button type="button" id="searchpost">검색</button></td>
					
	</th>
						
	
	
	</tr>
	

		
		</table>
	</div>
	
	<hr>
	
	<div class="buyerinfo">
	
	<h2 class="infotitle">배송비 +3000원</h2>
	
	
		
	<!-- 	<span style="    grid-column: 4;
    grid-row: 1;
    text-align: center;
    position: relative;
    top: 21px;
    right: 43px;">제주/도서산간:+5000원</span> -->
    
    
	</div>
	
	<hr>
	
	<h1>총 결제 금액:${deal.picPrice}</h1>
		<button type="submit" value="등록" id="btn-kakaopay" onclick="btn-kakaopay">등록</button>
	<hr>
	
	</form>
	</div>
</body>



<script>
$(function(){
	$('#kakaobtn').click(function(){
		$.ajax({
			url:'kakaopay',
			dataType:"json",       /* "picPrice":$('#picPrice').val(), */
			success:function(data){
				 // alert(resp.tid); //결제 고유 번호
				var box = resp.next_redirect_pc_url;
				window.open(box);
				alert("결제가 완료 되었습니다.");
				location.href = box;
				
			},
			error:function(error){
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
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#searchpost").postcodifyPopUp(); }); </script>
</html>