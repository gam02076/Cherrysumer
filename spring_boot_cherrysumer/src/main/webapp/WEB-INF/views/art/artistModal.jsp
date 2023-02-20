<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/artistModal.css' />">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<%-- <script src="<c:url value='/js/artistModal.js' />"></script> --%>

</head>
<body>

	<!-- 모달 창 -->
	<div class="modal_content" title="클릭하면 창이 닫힘">

		<div id="detail">
			<div class="modal_imgbox">
				<img src="<c:url value='/images/${name.memImg }'/>" id="modal_img">
				<div id="history">${name.memName }</div>
			</div>
			<div id="profile">
				<div class="name">I N T R O D U C E</div>
				<hr>
				<div class="pflieindtro" style="height: 8%; margin: 3%;">${name.memIntroduce }</div>
				<div class="name">A R T & E X H I B I T I O N</div>
				<hr>
				<div id="pfiletitle">
					<span style="width: 190px;">Recent</span><span
						style="width: 190px;">Exhibition</span>
				</div>
				<div class="pflieindtro"
					style="justify-content: space-between; height: 30%;">
					<span class="ArtNEx" style="background-image:url(<c:url value='/images/2.png'/>);"> 
					<c:forEach var="art" items="${art }"
							begin="0" end="0">
							<img src="<c:url value='/images/${art.picimg }'/>"
								class="artImgs"
								onerror="this.style.display='none'; this.src='<c:url value='/images/2.png'/>'">
						</c:forEach>
					</span> <span class="ArtNEx"><img
						src="<c:url value='/images/${ex.artImg }'/>" class="artImgs"
						onerror="this.style.display='none'; this.src='<c:url value='/images/2.png'/>'"></span>
				</div>
			</div>
		</div>

	</div>
	<%-- <div id="art">
		<c:forEach var="art" items="${art }" begin="0" end="3">
			<div class="artImg">
				<img src="<c:url value='/images/${art.picimg }'/>" class="artImgs"
					onerror="this.style.display='none';">
			</div>
		</c:forEach>
	</div> --%>


</body>
</html>