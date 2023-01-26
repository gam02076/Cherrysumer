<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value='/css/picture/picture.css'/>" rel="stylesheet" type="text/css" />

<script src="https://kit.fontawesome.com/bb34e32cb3.js"crossorigin="anonymous"></script>


<link href="<c:url value='/css/picture/modal_register.css'/>"rel="stylesheet" type="text/css" />

<link href="<c:url value='/css/picture/modal.css'/>" rel="stylesheet" type="text/css" />


<link href="<c:url value='/css/picture/menu.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">

<title>사진,그림 판매 목록</title>
</head>



<body>

<c:import url="/WEB-INF/views/layout/top.jsp" />



<!-- 사이드바 시작 -->
	<aside class="side-bar">
		<div class="side-bar__status-ico">
			<div></div>
			<div></div>
			<div></div>
		</div>

		<nav class="side-bar__menu-box-1">
			<ul>
				<li><a href="<c:url value='/picture/'/>"> <span> <i class="fas "></i>
					</span> <span>HOME</span>
				</a></li>
				<li><a href="<c:url value='/picture/picture_list/'/>"> <span> <i class="fas "></i>
					</span> <span>ART</span>
				</a></li>
				</li>
				<li><a href="<c:url value='/picture/photo_list/'/>"> <span> <i class="fas "></i>
					</span> <span>Photo</span>
				</a></li>
				</li>
				</li>
				<li style="border:none"><a class="register" style="font-size: x-large; ">작품등록<i class="fas " ></i>
					 
				</a></li>




			</ul>
		</nav>
	</aside>






	<content class="content"> <side> ㅋ </side>

	<div class="main_grid_container">



		<!-- <div class="menu" onclick="sideMenu();"></div> -->

		

		<%-- <a href="<c:url value='/publicE/viewlistAllpublicEvent'/>" id="menu-btn">공공기관</a> --%>

		<div class="grid_container_01">

				

			<div id="image1">
				<a href="#"> <img src="<c:url value="/image/p16.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image2">
				<a href="#"> <img src="<c:url value="/image/p1.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image3">
				<a href="#"> <img src="<c:url value="/image/01.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image4">
				<a href="#"> <img src="<c:url value="/image/02.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image5">
				<a href="#"> <img src="<c:url value="/image/p2.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>


		</div>

		<div class="grid_container_02">

			<div id="image6">
				<a href="#"> <img src="<c:url value="/image/p5.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image7">
				<a href="#"> <img src="<c:url value="/image/p3.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image8">
				<a href="#"> <img src="<c:url value="/image/04.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image9">
				<a href="#"> <img src="<c:url value="/image/05.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image10">
				<a href="#"> <img src="<c:url value="/image/p4.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>


		</div>

		<div class="grid_container_03">

			<div id="image11">
				<a href="#"> <img src="<c:url value="/image/p14.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image12">
				<a href="#"> <img src="<c:url value="/image/03.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image13">
				<a href="#"> <img src="<c:url value="/image/p13.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image14">
				<a href="#"> <img src="<c:url value="/image/p12.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>

			<div id="image15">
				<a href="#"> <img src="<c:url value="/image/p6.jpg/"/>"
					alt="img" class="main_image" />
				</a>
			</div>


		</div>


	</div>

	</content>


	<footer id="d">
		<div>footer</div>
	</footer>


	<div id="text">
		<h1 id="tt">Pick Your Favorite</h1>
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




</body>

<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/meun.js'/>"></script>
<script src="<c:url value='/js/picture/modal.js'/>"></script>
<script src="<c:url value='/js/picture/file.js'/>"></script>





</html>