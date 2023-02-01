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
    
    
    <div class="product">
        <div class="product_image">
            <img src="<c:url value='/image/${art.picimg }'/>" class="image">
            <pre class="waterMark">시 선</pre>
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
                    <th>제작년도</th>
                    <td class="underline"></td>
                    <th>가격</th>
                    <td class="underline">${art.picPrice }</td>
                </tr>
            </table>
            <div class="underline">작품소개</div>
            <div id="artInfo">작품 소개입니다.</div>
            
            <div><a href="#" class="myButton">구매하기</a></div>
        </div>
    </div>
		    
		  
    </body>
  </html>