<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>목록리스트</title>
</head>


<body class="listbody">

<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />

	


		<form action="/picture/searchResult" method="post">
			<div class="searchdiv">
			<input type="search" name="keyword" placeholder="검색"
				class=searchinput>
		</div>
			<!-- <input type="submit" name=""
					value="검색"> -->
		</form>
	</div>

	<div class="list_container">

		<c:forEach var="pict" items="${photo}">
		<c:if test="${pict.picType eq '1' }">
			<div class="box" id="${pict.picNo}">
				<input type="hidden" class="cardNO" value="${pict.picNo}">
				<div class="img" value="${pict.picNo}">
					<img src="<c:url value="/image/${pict.picimg}"/>"
						alt="Hover Effect">
				</div>
				<div class="info">
					<table>

						<div>
							<h2>${pict.picTitle}</h2>
						</div>

						<tr>
							<th>작가:</th>
							<td>${pict.picauthor}</td>
						</tr>
						<tr>
							<th>가격:</th>
							<td>${pict.picPrice}원</td>
						</tr>
							<tr>
							<th>소재/기법:</th>
							<td>${pict.pictech}</td>
						</tr>
						<tr>
							<th>사이즈:</th>
							<td>${pict.picSize}</td>
						</tr>
					</table>

				</div>
			</div>
			</c:if>
		</c:forEach>
	</div>



	<!-- 모달 -->
	<!-- 모달 -->
	<!-- 모달 -->
	<!-- 모달 -->
	<!-- 모달 -->
	<!-- 모달 -->


	<div class="modal">

		<div class="modal_content" title="클릭하면 창이 닫힘">
			<!--<input type="hidden" id="selectmemId">-->


			<form id="register" action="/register" method="post"
				enctype="multipart/form-data">
				<div class="modal_container">
					<div class="title_box">
						<div>
							<h1
								style="letter-spacing: 15px; font-size: 52px; margin-bottom: 0px;">작품등록</h1>
						</div>
					</div>
					<div class="product">
						<div class="product_image"
							onError="this.style.visibility='hidden'">
							<img src="/image/file.png" id="preview">
						</div>
						<div class="productInfo">
							<table class="Infotable">
								<tr>
									<th>작품명</th>
									<td><input type="text" name="picTitle" class="underline"></td>
									<th>ID</th>
									<td>${memid}</td>
								</tr>
								<tr>
									<th>소재/기법</th>
									<td><input type="text" name="pictech" class="underline"></td>
									<th>작가명</th>
									<td><input type="text" name="picauthor" class="underline"></td>
								</tr>
								<tr>
									<th>사이즈</th>
									<td><input type="text" name="picSize" class="underline"></td>
									<th>가격</th>
									<td><input type="text" name="picPrice" class="underline"
										onkeyup="inputNumberFormat(this)"></td>
								</tr>
								<tr>
									<td></td>
									<td><label>사진<input type="radio" name="picType"
											value="1"></label> <label>그림<input type="radio"
											name="picType" value="2"></label></td>
								</tr>
							</table>

							<div class="file">
								<input type="file" id="upload" name="upload" multiple>
							</div>
							<div class="textarea">
								<textarea placeholder=" 작품을 소개해주세요." name="piccontent"></textarea>
							</div>
							<div class="btn">
								<button type="submit" value="등록" class="btn_1">등록</button>
								<button type="button" class="btn_1 exit_btn">취소</button>
							</div>
						</div>

					</div>

				</div>


			</form>

		</div>
	</div>







<!-- 모달 창 -->
      <div id="Detailmodal">
		  <div id="Detail_content" title="클릭하면 창이 닫힘">
		  </div>
	  </div>

<!-- 모달창 끝 -->

<!-- 플로팅 버튼 -->

 <div class="floating-button">
  
  <span class="move-guestBook">
     <a class="guest-btn" href="<c:url value='/picture/photo_list/'/>"></a>
  </span>
  
   <span class="move-myWebSite">
      <a class="myWebSite-btn" href="<c:url value='/picture/picture_list/'/>"></a>
	</span>
<c:if test="${not empty sessionScope.sid }">
	<span class="move-myWebSite">
      <a class="myWebSite-btn2" href="<c:url value='/picture/registerform/'/>"></a>
	</span>
</c:if>
</div>



</body>


<%-- 



<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/menu.js'/>"></script>
<script src="<c:url value='/js/picture/modal.js'/>"></script>
<script src="<c:url value='/js/picture/file.js'/>"></script>
<script src="<c:url value='/js/artList.js' />"></script> <!-- 모달 (Detail)  --> --%>
</html>