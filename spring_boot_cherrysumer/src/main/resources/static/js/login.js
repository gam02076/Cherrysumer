/**
 * 
 */
 
 $(document).ready(function(){
 	$('#loginForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/eqlogin",
 			data: {"id":$('#id').val(),
 			       "pwd":$('#pwd').val()},
 			dataType:'text',
 			success:function(result){
 				if(result == "success"){
 					alert("로그인 성공\n메인 페이지로 이동합니다.");
 					location.href="/";
 				}else{
 					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
 				}
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});