/**
 * findIdForm.js
 */
 
 $(document).ready(function() {
 	$('#findIdForm').on('submit', function() {
 		// 폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		//var findIdName = "";
 		var findIdEmail = $('#findIdEmail').val();
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/findId",
 			data:{"findIdName":$('#findIdName').val(),
 				  "findIdEmail":findIdEmail},
 			dataType:"text",
 			success:function(result) {
 				if (result != "fail") {
 					alert("ID : " + result);
 					location.href="/member/searchAfterLoginForm?memId=" + result;
 				} else {
 					alert("ID 찾기를 실패했습니다 이름과 이메일을 확인해주세요");
 					location.href="/member/findIdForm";
 				}
 			},
 			error:function() {
 				alert("실패했습니다 다시 시도해주세요");
 			},
 			complete:function() {
 				// alert("작업 완료");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 }); 
 