<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>Insert title here</title>
     <link href="<c:url value='/css/mypage/myPg_myArt.css'/>" rel="stylesheet" type="text/css" />
   <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
   <script src="<c:url value='/js/mypage/myPg_myArt.js' />"></script> <!-- 모달 (Detail)  -->
  
   </head>
    <body>
    
    
      <form action="<c:url value='/updateArt'/>" method="post" >
		<div class="container">
			<div class="title_box">
				<div>
					<h1>작품수정</h1>
				</div>
			</div>
			<input type="hidden" name="picNo" value="${art.picNo }">
			<div class="product">
				<div class="product_image" style="background-image:url(/images/${art.picimg });">
				</div>
				<div class="productInfo">
					<table>
						<tr>
							<th>작품명</th>
							<td><input type="text" name="picTitle"class="underline" value="${art.picTitle }"></td>
							<th >ID</th>
							<td class="underline">${sessionScope.sid}</td>
						</tr>
												<tr>
							<th>소재/기법</th>
							<td><input type="text" name="pictech"class="underline" value="${art.pictech }"></td>
							<th>작가명</th>
							<td><input type="text" name="picauthor" class="underline" value="${art.picauthor }"></td>
						</tr>
						<tr>
							<th>사이즈</th>
							<td><input type="text" name="picSize" class="underline" value="${art.picSize }"></td>
							<th>가격</th>
							<td><input type="text" name="picPrice" class="underline" onkeyup="inputNumberFormat(this)" value="${art.picPrice }"></td> 
						</tr>
						<tr>
							<td></td>
						</tr>
					</table>

					<div class="textarea">
						<textarea name="piccontent" value="${art.piccontent }" placeholder="${art.piccontent }"></textarea>
					</div>
					<div class="btn">
						<button type="submit" value="등록" class="btn_1">등록</button>
						<button type="button" class="btn_1">취소</button>
					</div>
				</div>

			</div>

		</div>


	</form>
    </body>
  </html>