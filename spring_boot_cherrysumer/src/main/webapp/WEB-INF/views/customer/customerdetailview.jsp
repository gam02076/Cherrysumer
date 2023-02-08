<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
</head>
<body>
<div id="wrap">
			<table border="1" width="400">
					<tr><td>아이디 </td><td>${cus.memId }</td></tr>
					<tr><td>제목  </td><td>${cus.custitle }</td></tr>
					<tr><td>날짜  </td><td>${cus.cusdate }</td></tr>
					<tr><td>내용 </td><td>${cus.custext } </td></tr>
					<tr><td>공개여부 </td><td> ${cus.cusabc }</td></tr>			
				</table><br><br>
					
				<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
				
				<a href="<c:url value='/product/updateProductForm/${prd.prdNo }'/>">상품 정보 수정</a><br><br>
				
				<a href="javascript:deleteCheck();">상품 정보 삭제</a><br><br>
				<!--  삭제 확인 메시지 출력 -->
				<script>
					function deleteCheck(){
						var answer = confirm("삭제하시겠습니까?");
						if(answer){
							location.href="/customer/deletecustomer/${cus.cusNo}";
						}
					}
				</script>
		</div>

</body>
</html>