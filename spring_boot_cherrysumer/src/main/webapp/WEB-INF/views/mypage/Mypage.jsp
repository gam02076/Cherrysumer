<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
#wrap{
width:100%;
height:100%;
text-align:center;
background-image:url("../images/바탕화면.png");
background-size:100% 100%;
color:white;
}
#my{
margin:auto;
  width : 1000px;
  height: 600px;
}
#propil{
margin: auto;
  width : 500px;
  height: 500px;
  background-color:#9999CC;
  background-color: rgba( 255, 255, 255, 0.5 );
  border-radius:30px;
}


#button{
border:5px;
background-color:#999999;
border-radius:50px;
opacity: 0.5;
}
#button:hover{
opacity:1;
}
#a{
  width : 100px;
  height: 100px;
background-color:#999999;
margin-left:50px;
}
#b{
  width : 100px;
  height: 100px;
background-color:#999999;
margin-left:130px;
background-image:url("../images/사람.jpg");
background-size:cover;
}
#picture{
display: flex;
align-items: center;
justify-content: center;
}
</style>
</head>
<body>
<div id="wrap">
<br/><br/><br/>
<h1>마이페이지</h1>
<div id="my">
<table id="propil">
<tr><th>프로필 사진</th>
 <td><div id="b"></div></td></tr>
<tr><th>아이디</th><td>${vo.memId}</td></tr>
<tr><th>이름</th><td> ${vo.memName}</td></tr>
<tr><th>이메일</th><td> ${vo.memEmail} </td></tr>
<tr><th>전화</th><td> ${vo.memHP} </td></tr>
<tr><th>주소</th><td> ${vo.memZipcode}<br/>${vo.memAddress1}<br/> 
${vo.memAddress2} </td></tr>

<tr><th>회원유형</th><td> ${vo.memType} </td></tr>
</table><br />
 <a href="<c:url value='Mypage2' />"><input id="button" type="button" value="회원정보 수정"></a>
</div>
<div id="picture">
<div id="a">
</div>
<div id="a">
</div>
<div id="a">
</div>
<div id="a">
</div><br/><br/><br/><br/>
</div>
<br/><br/>
<a href="<c:url value='Mypage2' />"><input id="button" type="button" value="내 그림 더 보기"></a>
<br/><br/><br/><br/>
</div>

</body>
</html>