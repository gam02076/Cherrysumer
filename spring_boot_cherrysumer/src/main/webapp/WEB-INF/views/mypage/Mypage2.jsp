<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
#wrap{
width:100%;
height:100%;
text-align:center;
background-image:url("../image/바탕화면.png");
background-size:100% 100%;
color:white;
}
#b{
  width : 100px;
  height: 100px;
background-color:#999999;
margin-left:130px;
background-image:url("../image/사람.jpg");
background-size:cover;
}
#my{
margin: auto;
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
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div id="wrap">
<br /><br /><br />
<form method="post" action="<c:url value='/Mypage2/update'/>">
<table id="propil">
<tr><th>프로필 사진</th>
 <td><div id="b"></div><br/><input id="button" type="button" value="수정하기">
 <input id="button" type="button" value="삭제하기"></button></td></tr>
<tr><th>아이디</th><td><input type="text" id="memName" name="memName" value="${vo.memId}" ></td></tr>
<tr><th>이름</th><td><input type="text" id="memName" name="memName" value="${vo.memName}"></td></tr>
<tr><th>이메일</th><td><input type="text" id="memEmail" name="memEmail" value="${vo.memEmail}"></td></tr>
<tr><th>전화</th><td><input type="text" id="memHP" name="memHP" value="${vo.memHP}"></td></tr>
<tr><th>우편번호</th><td><span class="input_area"><input type="text" id="memHP" name="memHP" class="postcodify_postcode" id="memZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button></td></tr>
<tr><th>도로명 주소</th><td><span class="input_area"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" ></span></td></tr>
<tr><th>상세 주소</th><td><span class="input_area"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${vo.memAddress2}"></span></td></tr>
<tr><th>회원유형</th><td><input type='radio' name='memType' id='memType' value='normal'/>일반 <input type='radio' name='memType' id='memType' value='artist'/>아티스트</td></tr>
</table><br/>
<input id="button" type="submit" value="수정하기">
<input id="button" type="reset" value="취소">
</form>
<br /><br /><br />
</div>
	<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</body>
</html>