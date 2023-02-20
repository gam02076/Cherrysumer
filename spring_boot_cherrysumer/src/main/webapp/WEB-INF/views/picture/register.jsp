<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>

<link href="<c:url value='/css/picture/register.css'/>" rel="stylesheet" type="text/css" />
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/pirce.js'/>"></script>
<script src="<c:url value='/js/picture/register.js'/>"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bottom.css'/>">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/picture/button.css'/>">

<title>등록페이지</title>
</head>

<body>
<c:import url="/WEB-INF/views/layout/head_sim.jsp" />
<c:import url="/WEB-INF/views/layout/top.jsp" />



	<form id="register" action="/register" method="post" enctype="multipart/form-data" >
		<div class="container">
			<div class="title_box">
				<div>
					<h1>작품등록</h1>
				</div>
			</div>
			<div class="product">
				<div class="product_image" onError="this.style.visibility='hidden'">
					<img src="" id="preview" >
				</div>
				<div class="productInfo">
					<table class="register_table">
						<tr>
							<th>작품명</th>
							<td><input type="text" name="picTitle"class="underline" id="picTitle"></td>
							<th>ID</th>
							<td></td>
						</tr>
												<tr>
							<th style="pading:10px">소재/기법</th>
							<td><input type="text" name="pictech"class="underline" id="pictech"></td>
							<th>작가명</th>
							<td><input type="text" name="picauthor" class="underline" id="picauthor"></td>
						</tr>
						<tr>
							<th>사이즈</th>
							<td><input type="text" name="picSize" class="underline" id="picSize"></td>
							<th>가격</th>
							<td><input type="text" name="picPrice" class="underline" onkeyup="inputNumberFormat(this)" id="picPrice" ></td> 
						</tr>
						<tr>
							<td></td>
							<td><label>사진<input type="radio" name="picType" value="1" id="radio"></label>
								<label>그림<input type="radio" name="picType" value="2" id="radio"></label>
								</td>
						</tr>
					</table>

					<div class="file">
						<input type="file" id="upload" name="upload" multiple>
					</div>
					<div class="register_textarea" >
						<textarea placeholder=" 작품을 소개해주세요." name="piccontent" id="piccontent"></textarea>
					</div>
					<input type="hidden" name="good" value="1">
					<div class="register_btn">
						<button type="submit" value="등록" class="btn_1" onclick="submit1">등록</button>
						<button type="button" class="btn_1">취소</button>
					</div>
				</div>

			</div>

		</div>


	</form>


 <div class="floating-button">
  
  <span class="move-guestBook">
     <a class="guest-btn" href="<c:url value='/picture/photo_list/'/>"></a>
  </span>
  
   <span class="move-myWebSite">
      <a class="myWebSite-btn" href="<c:url value='/picture/picture_list/'/>"></a>

  
</div>





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

        document.getElementById('upload').addEventListener('change', (e) => {
            readImage(e.target);
        })

    </script>


       
<script>
    
  
    
    
    
		let sf = document.getElementById("register");
    	sf.addEventListener("submit", function(e){
    		

    		
    		if(picTitle.value.length == 0) {
    			alert('작품명을 입력하세요.');
    			e.preventDefault();
    		} 
    		else if (picauthor.value.length == 0) {
    			alert('작가명을 입력하세요.');
    			e.preventDefault();
    		}
    		else if (pictech.value.length == 0) {
    			alert('소재/기법을 입력하세요.');
    			e.preventDefault();
    		}
    		else if (picSize.value.length == 0) {
    			alert('사이즈를 입력하세요.');
    			e.preventDefault();
    		}
    		else if (picPrice.value.length == 0) {
    			alert('가격을 입력하세요.');
    			e.preventDefault();
    		}
    		else if (upload.value.length == 0) {
    			alert('작품을 등록하세요.');
    			e.preventDefault();
    		}
    		else if (piccontent.value.length == 0) {
    			alert('작품을 설명해주세요.');
    			e.preventDefault();
    		}else if ( jQuery('input[name="picType"]:checked').val() !== '1' && jQuery('input[name="picType"]:checked').val() !== '2') {
    		    alert('사진/그림 선택해주세요.');
    		    e.preventDefault();
    		    
    		}
    		 alert('작품이 등록 되었습니다.');
    	
    	}); 
    	

   	
   	
    </script>
   
    
    
    

</body>

</html>