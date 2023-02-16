/**
 * 
 */
    $(document).ready(function(){
 	$('#searchBtn').on('click', function(){ 
 		event.preventDefault(); 
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/CustomerSearch",
 			data: {"keyword":$("#keyword").val()},
 			success:function(result){ 
 				$('#board-list .container').html(result);
		},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});