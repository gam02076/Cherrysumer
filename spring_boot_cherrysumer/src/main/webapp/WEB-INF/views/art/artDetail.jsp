<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
  <html>
   <head>
     <meta charset="UTF-8">
     <title>Insert title here</title>
     <link rel="stylesheet" type="text/css" href="<c:url value='/css/artModal.css' />">
   </head>
    <body>
    
  <form id="register" action="/dealcheck" method="post">  
  <input type="hidden" name="picNo" value="${art.picNo}">
    <div class="product">
        <div class="product_image">
            <img src="<c:url value='/images/${art.picimg }'/>" class="image">
        </div>
        <div id="productInfo">
            <table id="TbModal">
                <tr>
                    <th>작품명</th>
                    <td class="underline">${art.picTitle }</td>
                    <th>작가명</th>
                    <td class="underline">${art.picauthor }</td>
                </tr>
                <tr>
                    <th>소재/기법</th>
                    <td class="underline">${art.pictech }</td>
                    <th>가격</th>
                    <td class="underline">${art.picPrice }원</td>
                </tr>
                <tr>
                    <th>사이즈</th>
                    <td class="underline">${art.picSize }</td>
                    <th>등록일자</th>
                    <td class="underline">${art.pictime2 }</td>
                </tr>
                
            </table>
            <div class="underline">작품소개</div>
            <div id="artInfo">${art.piccontent }</div>
            
            <c:if test="${empty sessionScope.sid }">
				<div><botton><a class="myButton" href="/member/login"> 로그인 후 구매하기 </a></botton> </div>
			</c:if>
            
          
         
         <!--    <div><a class="myButton">구매하기</a></div> -->
         
			<c:if test="${not empty sessionScope.sid }">
				<div><button type="submit" value="등록" class="myButton">구매하기</button></div>
			</c:if>	 
         
         
         
         
         
         
        </div>
    </div>
		    
		  </form>
    </body>
    
    <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<script src="<c:url value='/js/deal/deal.js'/>"></script>
    
    
  </html>