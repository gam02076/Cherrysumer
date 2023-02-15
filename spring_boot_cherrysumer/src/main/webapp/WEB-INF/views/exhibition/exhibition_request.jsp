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
<%-- 		<script src="<c:url value='/js/imageFileUpload.js'/>"></script> --%> <%--등록버튼으로 올리는 방법. --%>
		<script src="<c:url value='/js/imageUpload.js'/>"></script>
		<script src="<c:url value='/js/exhibition_checkBox.js'/>"></script>
		<script src="<c:url value='/js/exhibition_request.js'/>"></script>
		<style>
  			@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
		</style>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp" />
			<div id="wrapper">
				<!-- 로그인 하지 않은 경우에는 [로그인] 버튼 출력 -->
				<c:if test="${empty sessionScope.sid }">
					<div id="blank"></div>
					<div id="table_background">
						<div id="pleaseLogin">
							<h2>로그인 후 신청해주세요.</h2><br><br>
							<button><a href="<c:url value='/member/login'/>"> ⇨ 로그인 </a></button> <!-- 로그인 폼으로 이동 -->
							<button><a href="<c:url value='/member/signup'/>"> ⇨ 회원가입 </a></button> <!-- 로그인 폼으로 이동 -->
						</div>
					</div>
				</c:if>
			
				<!-- 로그인 한 경우에는 [신청하기] 버튼 출력 -->
				<c:if test="${not empty sessionScope.sid }">
					<!-- 로고 이미지 -->
					<div class="logoBox">
						<img src="<c:url value='/image/logo2.png'/>">
					</div>
				
					<!-- 전시회 신청 폼 -->
					<div id="table_background">
						<section id="tableBox">
							<form id="requestForm" name="requestForm" method="post" action="<c:url value='/exhibition/insertRequest'/>">
								<table>
									<tr>
										<td colspan="4" width="600" height="200" class="item" style="padding:0 0 0 80px;"><font size="6">전시회 참가 신청서<br>Exhibition Request Form</font></td>
									</tr>
									<tr>
										<td colspan="4" class="item" style="border-bottom:1 solid grey;">1. 작가 정보</td>
									</tr>
									<tr>
										<td width="150" height="60" class="item">작가 성명</td>
										<td width="220" colspan="4"> ${request_memVo.memName}  </td>
									</tr>
									<tr>
										<td width="80" height="60" class="item"><label for="nickName">활동명</label></td>
										<td colspan="3"><label><input type="text" name="exhNickname" id="nickName"placeholder="Artist NickName"></label></td>						
									</tr>
									<tr>
										<td width="80" height="60" class="item">연락처</td>
										<td colspan="3">${request_memVo.memHP}</td>
									</tr>
									<tr>
										<td height="60" class="item">E-mail</td>
										<td colspan="3">${request_memVo.memEmail}</td>
									</tr>
									<tr><td colspan="4" ></td></tr>
									<tr>
										<td colspan="4">2. 전시회 정보</td>
									</tr>
									<tr>
										<td><label for="title" class="item">전시회 주제</label></td>
										<td colspan="3"><label><input type="text" name="exhTitle_kr" id="title" placeholder="Exhibition Title_kr"></label></td>						
									</tr>
									<tr>
										<td></td>
										<td colspan="3"><label><input type="text" name="exhTitle_eng" id="title" placeholder="Exhibition Title_eng"></label></td>
									</tr>
									<tr>
										<td rowspan="2" class="item">전시 일정<br>Period of Exhibition</td>				
										<td><label for="exhStartDate" class="item">전시 시작일</label></td>
										<td><label><input type="date" name="exhStartDate" id="exhStartDate"></label></td>
									</tr>
									<tr>
										<td><label for="exhEndDate" class="item">전시 종료일</label></td>
										<td><label><input type="date" name="exhEndDate" id="exhEndDate"></label></td>				
									</tr>
									<tr>
										<td><label for="exhSummary" class="item">전시회 요약</label></td><td colspan="3"><label><input type="text" name="exhSummary" id="exhSummary" placeholder="Exhibition Summary"></label></td>				
									</tr>
									<tr>
										<td><label for="introduce" class="item">전시회 소개</label></td>
										<td colspan="3"><textarea id="introduce" name="exhInterview1"
												placeholder="전시회 컨셉과 작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce the concept of the exhibition and your works."></textarea>
										</td>
									</tr>
									<tr>
										<td><label for="introduce" class="item">전시회 소개</label></td>
										<td colspan="3"><textarea id="introduce" name="exhInterview2"
												placeholder="전시회 컨셉과 작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce the concept of the exhibition and your works."></textarea>
										</td>
									</tr>
									<tr>
										<td><label for="introduce" class="item">전시회 소개</label></td>
										<td colspan="3"><textarea id="introduce" name="exhInterview3"
												placeholder="전시회 컨셉과 작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce the concept of the exhibition and your works."></textarea>
										</td>
									</tr>
									<tr>
										<td><label for="introduce" class="item">전시회 마무리 글</label></td>
										<td colspan="3"><textarea id="introduce" name="exhClosingWords"
												placeholder="전시회 컨셉과 작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce the concept of the exhibition and your works."></textarea>
										</td>
									</tr>
									<tr><!-- 공백 -->
										<td colspan="5" height="50"></td>
									</tr>
									
									<tr>
										<td colspan="4">판매를 희망하는 작품 6장을 첨부하시고, 작품에 대한 설명을 해주세요</td>
									</tr>
									<%-- <c:forEach varStatus="status" begin="0" end="6">
									<tr class="uploadTr">
										<!-- 업로드한 이미지 출력-->
										<td><div id="imageBox" style="text-align: center">
												<img src="" class="preview"></div></td>
										<!-- 파일 업로드 -->
										<td align="center" height="39">		
											<div id="imageFileForm">							
												<input type="file" class="uploadFile" name="uploadFile"> <br>
												<img src="" class="preview"></div>
											</div>							
										</td>
									</tr>
									</c:forEach> --%>						
			<!-- 						<tr>
										<td><input type="file" id="upload-image1" class="uploadImage" name="upload-image" accept="image/*" style="display:none;">
											<div class="imageView imageView1">
												<img src="" id="preview">
											</div>
										</td>
										<td>
										</td>
									</tr>
									<tr>
										<td><input type="file" id="upload-image2" class="uploadImage" name="upload-image2" accept="image/*" style="display:none;">
											<div class="imageView imageView2">
												<img src="" id="preview2">
											</div>
										</td>
									</tr> -->
									<tr><!-- 공백 -->
										<td colspan="5" height="50"></td>
									</tr>
									<c:forEach varStatus="status" begin="1" end="3">
										<tr>
											<td><center>대표 작품 여부</center></td>							
											<td>작품명(한글)</td>
											<td><input type="text" name="artName_kr" id="exhibitName_kr" placeholder="Name of an Exhibit (Kr)"></td>
										</tr>
										<tr>
											<td><input type="checkbox" name="artMain" value='1' id="artMain"  onclick='checkOnlyOne(this)'/>
												<input type="hidden" name="artMain"  value='0' id="artMain_hidden" /></td>
											<td>작품명(영문)</td>
											<td><input type="text" name="artName_eng" id="exhibitName_eng"  placeholder="Name of an Exhibit (eng)"></td>
										</tr>
										<tr>
											<td rowspan="5"><input type="file" id="upload-image1" class="uploadImage" name="upload-image" accept="image/*" style="display:none;">
												<div class="imageView">
													<img src="" id="preview" class="preview">
												</div>
											</td>
											<td>작품 가격 (₩)</td>
											<td><input type="text" name="artPrice" id="exhibitPrice" placeholder="Price of an Exhibit"></td>
										</tr>	
										<tr>				
											<td>제작 연도</td>
											<td><input type="text" name="artDate" id="production year"placeholder="production year"></td>
										</tr>
										<tr>				
											<td>작품 크기 (cm)</td>
											<td><input type="text" name="artSize" id="exhibitSize"placeholder="Size of Exhibit"></td>
										</tr>
										<tr>				
											<td>작품 설명</td>
											<td><textarea id="introduce" name="artExplain"
												placeholder="작품 소개 및 설명을 해주세요.&#13;&#10;Please introduce your work."></textarea></td>
										</tr>
										<tr>				
											<td>작품 유형<br></td>
											<td>Type of work  :  
												<select name="ctgId">
													<option selected value="1">유화</option>
													<option value="2">수채화</option>									
													<option value="3">사진</option>
													<option value="4">아크릴</option>
												</select>
											</td>
												
												
										</tr>
										
									</c:forEach>				
									<tr><!-- 공백 -->
										<td colspan="5" height="50"></td>
									</tr>
									<tr>
										<td colspan="3" style="text-align:center;"> 한글로 계약 조건 어쩌고 저쩌고</td>
									</tr>		
									<tr>
										<td colspan="3" style="text-align:center;">
											<div class="terms">
												Terms and Conditions:<br>
												1. The booking fee/first payment of 50% is non-refundable and the second payment of 50% will be due on 1st October 2019<br>
												
												2. The organizer remains the right to reject any reservation and to refund the booking fee in full without naming any reasons<br>
												
												3. As exhibitors we agree to pay the total cost shown above. We hereby declare that we have read and accepted the terms and conditions of the participation contract and agree to abide by the Rules and Regulations of the Dubai Off-Road and Adventure Show 2014 (as set out in the Exhibitor Manual) and any agreements which may be imposed by the relevant authorities or the venue as a condition of allotment of space. We hereby sign and agree to be bound by them. The terms and condition can be downloaded from our website http://dubaiadventureshow.com/TC.pdf
												<br>
												4. Payments have to be made in favor of "OutdoorUAE FZE" or to Emirates NBD account AC No.: 101 42193821 01 AC Name: OutdoorUAE FZE 
												<br>
												5. Any booking is only valid after it is confirmed by the organizer and if the payments are made in full and on time.
												<br>				
											</div>
										</td>
									</tr>
									
									
			
									
								<%--<tr>
			
								</tr>
								<tr><td colspan="4"></td></tr>
								
								<tr><td colspan="4"></td></tr>
								<tr>
									<td colspan="4">4. 기타 사항</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="2"><textarea placeholder="기타 문의 사항을 입력해주세요.&#13;&#10;Please let us know other inquiries."></textarea></td>
							</tr>
								
									
								
		
								<tr>
									<td colspan="5"><hr></td>
								</tr>
								
								
								
								
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
										<button id="requestSubmit"><a href="<c:url value='/exhibition/requestList/${rvo.rNo}'/>">신청하기<br>(submit)</a></button>
									</td>
								</tr>--%>
									<tr>
										<td>
											<input type="submit" id="insertRequest" value="신청하기"> 
										</td>
									</tr>
								</table>
							</form>
						</section>	
					</div>
			</c:if>
			<div style="height:100px;"> <!-- 푸터와의 간격 -->
			</div>
		</div>		
	<c:import url="/WEB-INF/views/layout/bottom.jsp" />
	<script src="<c:url value='/js/countDown.js' />"></script>
	</body>
</html>