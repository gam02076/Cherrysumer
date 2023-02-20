/**
 * ocr.js
 */
 
 $(document).ready(function(){
 	$('#greenEyeForm').on('submit', function(){
 		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		// 폼 데이터 읽어 오기
 		var formData = new FormData($('#greenEyeForm')[0]);
 		
 		// 파일명 추출
 		var fileName = $('#uploadFile').val().split("\\").pop(); // 파일명만 추출
 		//alert(fileName);
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"greenEyeResult2",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false,
 			data: formData,
 			success:function(result){
 				$('#resultDiv').text(result); // 이미지에서 추출한 결과 텍스트 출력
 				
 				// 이미지 출력 : imageDiv 박스에 append
 				//$('#imageDiv').empty(); // 이전 이미지 삭제하고
 				//$('#imageDiv').append("<img src='/images/" + fileName + "'>");
 				//$('#imageDiv').html("<img src='/images/image-48.png'>");
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 		
 		$('#imageDiv').html("<img src='/images/" + fileName + "'>");
 	});// submit 종료
});