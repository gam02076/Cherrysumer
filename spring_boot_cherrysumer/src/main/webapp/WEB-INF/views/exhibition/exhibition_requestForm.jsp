<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전시회 신청폼</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition_request.css'/>">
		<script src="<c:url value='/js/imageFileUpload.js'/>"></script> 
	</head>
	<body>
		<c:import url = "/WEB-INF/views/layout/top.jsp"/>

		<section id="wrapper">
			<!-- 파일 업로드 -->
			<form id="fileUploadForm" method="post" 
									  action="<c:url value='/ArtUpload'/>" 
									  enctype="multipart/form-data">
				<table id="imgUploadBox">					
					<caption><img src="<c:url value='/image/logo2.png'/>" class="logo"></caption>
					<tr>
						<th>대표 이미지</th><th>신청인</th>
					</tr>
					<tr>
						<td>						
							파일 : <input type="file" id="uploadFile" name="uploadFile">
								  <input type="submit" value="업로드">									
						</td>
					</tr>
				</table>
			</form>
		</section>
	</body>
</html>