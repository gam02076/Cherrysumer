<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value='/css/picture/register.css'/>" rel="stylesheet" type="text/css" />
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/picture.js'/>"></script>
<script src="<c:url value='/js/picture/pirce.js'/>"></script>



<title>등록페이지</title>
</head>

<body>

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
					<table>
						<tr>
							<th>작품명</th>
							<td><input type="text" name="picTitle"class="underline"></td>
							<th>ID</th>
							<td>${memid}</td>
						</tr>
												<tr>
							<th>소재/기법</th>
							<td><input type="text" name="pictech"class="underline"></td>
							<th>작가명</th>
							<td><input type="text" name="picauthor" class="underline"></td>
						</tr>
						<tr>
							<th>사이즈</th>
							<td><input type="text" name="picSize" class="underline"></td>
							<th>가격</th>
							<td><input type="text" name="picPrice" class="underline" onkeyup="inputNumberFormat(this)"></td> 
						</tr>
						<tr>
							<td></td>
							<td><label>사진<input type="radio" name="picType" value="1"></label>
								<label>그림<input type="radio" name="picType" value="2"></label>
								</td>
						</tr>
					</table>

					<div class="file">
						<input type="file" id="upload" name="upload" multiple>
					</div>
					<div class="textarea">
						<textarea placeholder=" 작품을 소개해주세요." name="piccontent"></textarea>
					</div>
					<div class="btn">
						<button type="submit" value="등록" class="btn_1">등록</button>
						<button type="button" class="btn_1">취소</button>
					</div>
				</div>

			</div>

		</div>


	</form>



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
    $(document).ready(function(){
    
    	var fileInput = document.getElementById("upload");
    	
    	var files = fileInput.files;
    	var file;
    	
    	for (var i = 0; i < files.length; i++){
    		
    		file = files[i];
    		
    		alert(file.name);
    		
    	}
    })
    
    
    
    </script>
    
    
    
    
    
    

</body>

</html>