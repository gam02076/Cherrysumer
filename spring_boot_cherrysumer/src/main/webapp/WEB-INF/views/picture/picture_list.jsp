<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value='/css/picture/picture.css'/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value='/css/picture/list.css'/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value='/css/picture/modal.css'/>" rel="stylesheet"
	type="text/css" />


<link href="<c:url value='/css/picture/meun.css'/>" rel="stylesheet"
	type="text/css" />



<link href="<c:url value='/css/picture/modal_register.css'/>"
	rel="stylesheet" type="text/css" />
	
	
 <link rel="stylesheet" type="text/css" href="<c:url value='/css/artList.css' />"><!-- 모달 (Detail)  -->


<title>목록리스트</title>
</head>


<body>



	<!-- 사이드바 시작 -->
	<aside class="side-bar">
		<div class="side-bar__status-ico">
			<div></div>
			<div></div>
			<div></div>
		</div>

		<nav class="side-bar__menu-box-1">
			<ul>
				<li><a href="<c:url value='/picture/'/>"> <span> <i class="fas fa-home"></i>
					</span> <span>HOME</span>
				</a></li>
				<li><a href="<c:url value='/picture/picture_list/'/>"> <span> <i class="fas fa-home"></i>
					</span> <span>ART</span>
				</a></li>
				</li>
				<li><a href="<c:url value='/picture/photo_list/'/>"> <span> <i class="fas fa-home"></i>
					</span> <span>Photo</span>
				</a></li>
				</li>
				</li>
				<li style="border:none"><a class="register" style="font-size: x-large; ">작품등록<i class="fas fa-home" ></i>
					 
				</a></li>




			</ul>
		</nav>
	</aside>
	  

	<form action="/picture/searchResult" method="post">
		<div class="searchdiv">
			<input type="search" name="keyword" placeholder="검색"
				class=searchinput>
		</div>
		<!-- <input type="submit" name=""
					value="검색"> -->
	</form>
	</div>

	<div class="container">

		<c:forEach var="pict" items="${pic}">
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




	<%-- <div class="main_grid_container02">



			<c:forEach var="pict" items="${pic}">

				<div class="card_list">
					<input type="hidden" class="cardNO" value="${pict.picNo}">
					<div class="item  item1">
						<div class="image" value="${pict.picNo}">
							<img src="<c:url value="/image/${pict.picimg}"/>" alt="img"
								class="image" />
						</div>

						<div class="cont">
							<strong class="card_title">${pict.picTitle}</strong>
							<p class="card_price">가격:${pict.picPrice}</p>
							<p class="card_price">작가: 심 규 민</p>
							<a href="#" class="list_btn">구매하기</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

	</div> --%>









</body>

















<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/menu.js'/>"></script>
<script src="<c:url value='/js/picture/modal.js'/>"></script>
<script src="<c:url value='/js/picture/file.js'/>"></script>
<script src="<c:url value='/js/artList.js' />"></script> <!-- 모달 (Detail)  -->
</html>