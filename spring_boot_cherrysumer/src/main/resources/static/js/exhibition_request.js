/**
 * detail
 */
 
  $(document).ready(function(){
  	
  	$('#requestForm').on('submit', function  () {
  		// 폼 데이터 읽어 오기
 		var formData = new FormData($('#requestForm')[0]);
 		
 		$.ajax({
 			type:"post",
 			url:"/insert_exhibition_request_art",
 			enctype: 'multipart/form-data',
 			processData:false,
 			contentType:false,
 			data:formData,
			success:function(result){
				alert(result);
				location.href("/");
			},
			error:function(){
				// 오류있을 경우 수행 되는 함수
				alert("전송 실패");
			},
 		}); // ajax 끝
  	});
  
    /*
    $.ajax({
 			type:"post",
 			url:"/artDetail",
 			data:{picNo:$(this).attr("id")}
 			,
 			success:function(result){
 				$("#Detail_content").html(result);
 				
 			},
 			error:function(){
 			},
 			complete:function(){
 			}
 		}); // ajax 종료 
 		
 	*/
    
    
 
 
 }); //종료
 
 