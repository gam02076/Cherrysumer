/**
 * 
 */
 
 $(document).ready(function(){
 	$("#idCheck").on("click", function(){
 		event.preventDefault();
 		$("input[name=checked_id]").val('y');
 		
 		// 서버에 전송 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/memIdCheck",
 			data:{"memId":$('#memId').val()},
 			dataType:"text",
 			success:function(result){
 				if(result == "no_use"){
 					alert("사용할 수 없는 아이디입니다.");
 				}else{
 					alert("사용 가능한 아이디입니다.");
 				}
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				// alert("작업 완료");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 }); // 최종 종료