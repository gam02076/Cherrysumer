	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이게 뜨길 비시면 됩니다.</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/text.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/slides.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/scroll.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/slides.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<script src="<c:url value='/js/scroll.js' />"></script>	
<script src="<c:url value='/js/scroll2.js' />"></script>	
<script src="<c:url value='/js/slides.js' />"></script>	
<script src="<c:url value='/js/text.js' />"></script>	

   <style>     
#a{
width:100%;
height:70px;
background-color:white;
}
    a { text-decoration: none; color: black; }
    a:visited { text-decoration: none; }
    a:hover { text-decoration: none; }
    a:focus { text-decoration: none; }
    a:hover, a:active { text-decoration: none; }
    
.wrapper {
  /*This part is important for centering*/
  display: grid;
  place-items: center;
}

.typing-demo {
  width: 28ch;
  animation: typing 2s steps(22), blink .5s step-end infinite alternate;
  white-space: nowrap;
  overflow: hidden;
  border-right: 3px solid;
  font-family: monospace;
  font-size: 50px;
}

@keyframes typing {
  from {
    width: 0
  }
}
    
@keyframes blink {
  50% {
    border-color: transparent
  }
}
   </style>
</head>

<body>
<c:import url = "/WEB-INF/views/layout/top.jsp"/>
<div id="warp">
<div id="a"><div class="wrapper">
    <div class="typing-demo">
      시선에 오신 것을 환영합니다.
    </div>
</div></div>
<div id="show">
<section class='section'>
    <div class='masthead-image' id='master-container'>
        <div class='content center'>
            <h1 id='master'>
              <div>시 선 은</div><br/>
              <div id='master-container-scroller'>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>어머님</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>아버님</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>할아버지</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>할머니</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>삼촌</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>누나</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>형</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>심규민</a>
                </div>
                <div class='master-container-scroller_item'>
                  <a class='cta-link' href='#'>최성빈</a>
                </div>
                <div class='master-container-scroller_item'>박은빈</div>
              </div><br/>
              <div>모 두 가 작 가 가 될 수 있 습 니 다</div>
            </h1>
        </div>
    </div>
</section>
</div>
<div id="show1">
  <div class="splitview skewed">
  <a href="/">
        <div class="panel bottom">
            <div class="content">
                <div class="description">
                    <h1>Exhibition</h1><br/>
                    <p>전시되어 있는 그림을 더 구경하세요</p>
                </div>

                <img src="image/그림.jpg" alt="Original">
            </div>
        </div>
</a>
<a href="/">
        <div class="panel top">
            <div class="content">
                <div class="description">
                    <h1>Painting&Photo</h1><br/>
                    <p>전시되어 있는 사진을 더 구경하세요</p>
                </div>

                <img src="image/사진.jpg" alt="Duotone">
            </div>
        </div>
</a>
        <div class="handle"></div></div>

</div>
<div id="show2">
<div id="show2-1"></div>
<c:forEach var="list" items="${list}">
 <c:if test="${ list.memNo mod 2 ne 0 }">
<div class="left"><div class="imgBx">
                <img src="image/${list.memPicture}">
            </div>
            <div class="details">
                <h2>${list.memName} </h2>
                <p>인스타 : ${list.memInstargram}<br/><br/>
                페이스북 : ${list.memFacebook}<br/><br/>
                블로그 : ${list.memBlog}<br/></p>
            </div></div>
            </c:if>
             <c:if test="${ list.memNo mod 2 eq 0 }">
            <div class="right"><div class="imgBx">
                <img src="image/${list.memPicture}">
            </div>
            <div class="details">
                <h2>${list.memName}</h2>
                <p>인스타 : ${list.memInstargram}<br/><br/>
                페이스북 : ${list.memFacebook}<br/><br/>
                블로그 : ${list.memBlog}<br/></p>
                </div></div>
                </c:if>
</c:forEach>
                </div>


<div id="show3">
<div class="show3-2">

<c:forEach var="list" items="${list}">
 <c:if test="${ list.memNo mod 4 eq 0 }"><br/></c:if>

<div class="show3-1"><img src="image/${list.memPicture}"></div>
</c:forEach>
</div></div>
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>
</body>
</html>