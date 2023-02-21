<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/customer.css'/>">
		<style>
			#wrap{
				margin:auto;
				width: 100%;
				text-align: center;
				background-image: url("/images/pink.png");        
	background-size : 100% 100%;
	background-attachment: fixed;
	overflow: hidden;
			}
			
			table{
				margin:0 auto;
				border-collapse: collapse;
				text-align: left;
			}	
			#text{
			width:500px;
			height:500px;
			}
			#title{
			width:200px;
			}
			tr{
			border-top-style: dashed;
			}
			#reply{
			margin:auto;
			width:700px;
			border-top-style: dashed;
			border-bottom-style: dashed;
			}
			#quick{
			border-style: dashed;
			float : left;
			width:150px;
			height:150px;
			position: absolute;
			margin-left:1150px;
			margin-top:50px;
			background-image:url("/images/은하수.jpg");
            background-size:100% 100%;
			}
			#quick1{
			border-style: dashed;
			float : left;
			width:150px;
			height:150px;
			position: absolute;
			margin-left:1150px;
			margin-top:50px;
			background-image:url("/images/성.jpg");
            background-size:100% 100%;
			}
			#quick1:hover{
			display: none;
			}
			#quick2{
			border-style: dashed;
			float : left;
			width:150px;
			height:150px;
			position: absolute;
			margin-left:1150px;
			margin-top:250px;
			background-image:url("/images/은하수.jpg");
            background-size:100% 100%;
			}
			#quick3{
			border-style: dashed;
			float : right;
			position: absolute;
			width:150px;
			height:150px;
			margin-left:1150px;
			margin-top:250px;
			background-image:url("/images/집.jpg");
			background-size:100% 100%;
			}
			#quick3:hover{
			display: none;
			}
			li{
			margin-top:10px;
			list-style:none;
			font-size:9px;
			}
		</style>
</head>
<body>
<script type="text/javascript">
					function udateCheck(memId, writer, cusNo, rno){
						var id=memId;
						var writer=writer;
						var cusNo=cusNo;
						var rno=rno;
					
					if(id==writer){
						confirm("수정하시겠습니까?");
						location.href="http://localhost:8080/modify?cusNo="+cusNo+"&rno="+rno+"";
					}else{
						alert("본인의 댓글이 아닙니다")
					}
					
					
					}
					function deleteCheck(memId, writer, cusNo, rno){
						var id=memId;
						var writer=writer;
						var cusNo=cusNo;
						var rno=rno;
					
					if(id==writer){
						confirm("삭제하시겠습니까?");
						location.href="http://localhost:8080/delete2?cusNo="+cusNo+"&rno="+rno+"";
						
					}else{
						alert("본인의 댓글이 아닙니다")
					}
					}
					 $(document).ready(function(){
					$('#form').on('submit', function(){
						event.preventDefault();
						$.ajax({
				 			type:"post",
				 			url:"/write",
				 			data: {"writer":$('#writer').val(),
				 			       "regDate":$('#regDate').val(),
				 			       "content":$('#content').val(),
				 			       "cusNo":$('#cusNo').val()},
				 			dataType:'text',
				 			success:function(data){
				 				 $('#reply2').html(data);
				 				/* location.href="http://localhost:8080/customer/customerdetailview"+cusNo; */
				 			},
				 			error:function(){
				 				alert("로그인해주세요");
				 			},
				 			complete:function(){
				 				//alert("작업 완료");
				 			}
				 		}); // ajax 종료 
					    });
					 });
					
					 $(document).ready(function(){
						  var currentPosition = parseInt($("#quick").css("top"));
						  $(window).scroll(function() {
						    var position = $(window).scrollTop(); 
						    $("#quick").stop().animate({"top":position+currentPosition+"px"},500);
						  });
						  var currentPosition = parseInt($("#quick1").css("top"));
						  $(window).scroll(function() {
						    var position = $(window).scrollTop(); 
						    $("#quick1").stop().animate({"top":position+currentPosition+"px"},500);
						  });
						  var currentPosition = parseInt($("#quick2").css("top"));
						  $(window).scroll(function() {
						    var position = $(window).scrollTop(); 
						    $("#quick2").stop().animate({"top":position+currentPosition+"px"},500);
						  });
						  var currentPosition = parseInt($("#quick3").css("top"));
						  $(window).scroll(function() {
						    var position = $(window).scrollTop(); 
						    $("#quick3").stop().animate({"top":position+currentPosition+"px"},500);
						  });
						});
					
					
				</script>
<div id="wrap"><br/><br/>
<div id= "quick">
<li style="color:white;">성</li><hr/>
<li style="color:white;">임정섭</li><hr/>
<li style="color:white;">블로그 : </li>
<li style="color:white;">인스타그램 :</li>
<li style="color:white;">페이스북 : </li>
</div>
<div id= "quick1">
</div>
<div id= "quick2">
<li style="color:white;">집</li><hr/>
<li style="color:white;">임정섭</li><hr/>
<li style="color:white;">블로그 : </li>
<li style="color:white;">인스타그램 :</li>
<li style="color:white;">페이스북 : </li>
</div>
<div id= "quick3">

</div>
<div >
			<table> <tr><td id="title">제목</td><td>${cus.custitle }</td></tr>
					<tr><td id="title">작성자</td><td>${cus.memId }</td></tr>
					<tr><td id="title">내용</td><td id="text">${cus.custext } </td></tr>
					<tr><td id="title">작성날짜</td><td>${cus.cusdate }</td></tr>
					<tr><td id="title">공개여부</td><td> ${cus.cusabc }</td></tr>	
				</table><br><br>
				<h2>전체 댓글</h2>
				<div>
<c:forEach items="${reply}" var="reply">
<div id="reply2">
<table>
<tr><td style="width:100px;">${reply.writer}</td><td style="width:500px;">${reply.content }</td><td style="width:100px;">${reply.regDate}</td>
<td style="width:50px;"><a href="javascript:udateCheck('${memId}', '${reply.writer}','${reply.cusNo}','${reply.rno}');">수정</a></td>
<td style="width:50px;"><a href="javascript:deleteCheck('${memId}', '${reply.writer}','${reply.cusNo}','${reply.rno}');">삭제</a></td></tr>
</table>	</div>
</c:forEach>
<br/><br/><br/><br/>
<h2>댓글 작성하기</h2>
<div id="reply">
	<form id="form" name="form">
		<p>
			<label>댓글 작성자</label> <input type="text" name="writer" id="writer" value="${memId}" readonly>
			<label>작성 날짜</label> <input type="text" name="regDate" id="regDate" value="${time1}" readonly>
		</p>
		<p>
			<textarea rows="5" cols="50" name="content" id="content"></textarea>
		</p>
		<p>
		<input type="hidden" name="cusNo" id="cusNo" value="${cus.cusNo}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	</div>
	
</div>
				<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
				
				<a href="<c:url value='/boardList'/>">뒤로가기</a><br><br>
				
		</div>
		</div>
		<c:import url = "/WEB-INF/views/layout/bottom.jsp"/><br/>
</body>

</html>