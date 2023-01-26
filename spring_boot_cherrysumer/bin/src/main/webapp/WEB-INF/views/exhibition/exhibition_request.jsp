<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전시회 신청폼</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition_request.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/imageFileUploadMultiple.js'/>"></script>
<%-- 		<script src="<c:url value='/js/imageFileUpload.js'/>"></script> --%> <%--등록버튼으로 올리는 방법. --%>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
	
		<div id="wrapper">
		
			<div class="logoForm">
				<div class="logoBox">
					<img src="<c:url value='/image/logo2.png'/>">
				</div>
			<div class="textBox">전시회 참가 신청서</div>
			</div>
		
			<section id="tableBox">
				<table>
					<tr>
						<!-- 업로드한 이미지 출력 -->
						<td rowspan="16" width="500">
							<div id="imageBox" style="text-align: center">
								<img src="" id="preview">
							</div>
						</td>
						<td colspan="4" width="600">1. 작가 정보</td>
					</tr>
					<tr>
						<td width="80"><label for="name">작가 성명</label></td>
						<td width="220"><label><input type="text" id="name"
								size="20" placeholder="Artist Name" autofocus></label></td>
						<td width="80"><label for="nickName">활동명</label></td>
						<td><label><input type="text" id="nickName"placeholder="Artist NickName"></label></td>
					</tr>
					<tr>
						<td width="80"><label for="phone">연락처</label></td>
						<td><label><input type="text" id="phone" size="20"
								placeholder="Artist Phone Number"></label></td>
						<td><label for="email">E-mail</label></td>
						<td><label><input type="text" id="email"placeholder="Artist E-mail"></label></td>
					</tr>
					<tr><td colspan="4"></td></tr>
					<tr>
						<td colspan="4">2. 전시회 정보</td>
					</tr>
					<tr>
						<td><label for="title">전시회 주제</label></td>
						<td colspan="3"><label><input type="text" id="title" placeholder="Exhibition Title"></label></td>
					</tr>
					<tr>
						<td><label for="introduce">전시회 소개</label></td>
						<td colspan="3"><textarea id="introduce"
								placeholder="전시회 컨셉과 작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce the concept of the exhibition and your works."></textarea>
						</td>
					</tr>
					<tr>
						<td rowspan="2"><label for="title">전시할 작품 목록 등록</label></td>
					</tr>
					<tr>
						<td ><!-- 이미지 다중 업로드 목록 -->
							<div id="multiListBox">
								<%-- <c:forEach var="file" items="${originalFileNameList }">
									${file }<br>
								</c:forEach> --%>
							</div>
							
						</td>
						<td colspan="3" style="text-align: center">
							<div id="listBox">
								<form id="fileUploadFormMulti">
									<input type="file" id="uploadFileMulti" name="uploadFileMulti" multiple="multiple"> 
									<input type="submit" value="등록">
								</form>
									
							</div>
						</td>
					</tr>
					<tr><td colspan="4"></td></tr>
					<tr>
						<td colspan="4">3. 지불 계좌</td>
					</tr>
					<tr>
						<td width="80"><label for="bank">은행명</label></td>
						<td width="220"><label><input type="text" id="bank" placeholder="name of bank" autofocus></label></td>
						<td width="80"><label for="depositor">예금주</label></td>
						<td><label><input type="text" id="depositor" placeholder="depositor of bank"></label></td>
					</tr>
					<tr>
						<td><label for="account">계좌번호</label></td>
						<td colspan="3"><label><input type="text" id="account"
								placeholder="account number" size="20"></label></td>
					</tr>
					<tr><td colspan="4"></td></tr>
					<tr>
						<td colspan="4">4. 기타 사항</td>
					</tr>
					<tr>
						<td colspan="4" rowspan="2"><textarea
								placeholder="기타 문의 사항을 입력해주세요.&#13;&#10;Please let us know other inquiries."></textarea>
						</td>
					</tr>
					<tr>
						<!-- 파일 업로드 -->
						<td align="center" height="39">
							<form id="imageFileForm">
								전시회 대표 작품을 올려주세요.<br><br>
								<input type="file" id="uploadFile" name="uploadFile"> 
								<!-- <input type="submit" value="등록"> -->
							</form>
						</td>
					</tr>
					<tr>
						<td colspan="5" height="50"></td>
					</tr>
					<tr>
						<td colspan="5"><hr></td>
					</tr>
					
					<tr>
						<td colspan="5"> 한글로 계약 조건 어쩌고 저쩌고</td>
					</tr>
					
					<tr>
					<td colspan="5">
					<div class="terms">
					Terms and Conditions:
1. The booking fee/first payment of 50% is non-refundable and the second payment of 50% will be due on 1st October 2019<br>

2. The organizer remains the right to reject any reservation and to refund the booking fee in full without naming any reasons<br>

3. As exhibitors we agree to pay the total cost shown above. We hereby declare that we have read and accepted the terms and conditions of the participation contract and agree to abide by the Rules and Regulations of the Dubai Off-Road and Adventure Show 2014 (as set out in the Exhibitor Manual) and any agreements which may be imposed by the relevant authorities or the venue as a condition of allotment of space. We hereby sign and agree to be bound by them. The terms and condition can be downloaded from our website http://dubaiadventureshow.com/TC.pdf
<br>
4. Payments have to be made in favor of "OutdoorUAE FZE" or to Emirates NBD account AC No.: 101 42193821 01 AC Name: OutdoorUAE FZE 
<br>
5. Any booking is only valid after it is confirmed by the organizer and if the payments are made in full and on time.
<br>				
</div>
					</td></tr>
					<tr>
						<td colspan="5" height="50" style="text-align: right">Please accept terms and conditions</td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: right"><input type="checkbox"> 동의합니다.<br> I agree.</td>
					</tr>
					<tr>
						<td colspan="5"><hr></td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: center"  height="100">위와 같이 시선 전시회에 참가를 신청합니다.<br>
						I confirm that the above information is correct.</td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: center"> 2023 년 몇 월 몇 일 </td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: right">신청인 (Signature): 누구누구</td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: right"><input type="checkbox">동의합니다.<br>
						I agree.</td>
					</tr>
					<tr>
						<td colspan="5" style="text-align: right">
							<button id="requestSubmit"><a href="<c:url value='/exhibition/exhibition_requestListForm/${rvo.rNo}'/>">신청하기<br>(submit)</a></button>
						</td>
					</tr>
				</table>
			</section>
		</div>		
		<c:import url="/WEB-INF/views/layout/bottom.jsp" />
		
		<%--대표 이미지를 등록 버튼 없이 올리는 방법 --%>
		<script>
	        function readImage(input) {
	            if (input.files && input.files[0]) {
	                const reader = new FileReader();
	
	                reader.onload = (e) => {
	                    const previewImage = document.getElementById('preview');
	                    previewImage.src = e.target.result;
	                }
	                reader.readAsDataURL(input.files[0]);
	            }
	        }
	
	        document.getElementById('uploadFile').addEventListener('change', (e) => {
	            readImage(e.target);
	        })
    	</script>
	</body>
</html>