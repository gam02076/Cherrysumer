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
 					alert("회원님의 ID는 '" + result + "' 입니다.");
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
 
 
 
 $(document).ready(function() {
	var emailAuthCheck = "fail";
	
	// 인증번호 받기 버튼 클릭시
	$('#mailSendBtn').on('click', function() {
		var findIdEmail = $('#findIdEmail').val();
		// 입력한 메일 값 가져옴
		console.log("완성된 이메일 : " + findIdEmail);
		// 인증번호
		const checkInput = $('#findIdCode');

		if($('#findIdName').val() == "") {
			alert("이름을 입력해주세요.");
		} else {
			$.ajax({
				type:'post',
				url: "/member/findId",
				data: {"findIdName": $('#findIdName').val(),
					  "findIdEmail" : findIdEmail
				},
				dataType: 'text',
				success:function(result) {
					if(result == "data") { 
						$.ajax({
							type:'post',
							url: "/emailCheck",
							data: {"email": $('#findIdEmail').val()
							},
							success:function(data){
								checkInput.attr("disabled", false);
								code = data;
								alert("인증번호가 전송되었습니다.");
							}
						});	// ajax 종료
					} else {
						alert("이름 또는 이메일 주소가 다릅니다");
					}
				}
			});
		}

		
		// ajax로 전송

	});	// 버튼 이벤트 종료

	// 인증번호 비교
	// blur -> focus가 되는 경우
	/*$("#findIdCode").on('keyup', function() {
		const inputCode = $(this).val();
		const $resultMsg = $('#mailCheckWarn');

		if(inputCode === code) {
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css("color", "green");
			$('#mailSendBtn').attr("disabled", true);
			$('#userMail').attr('readonly', true);
			emailAuthCheck = "success";
			console.log("emailAuthCheck = " + emailAuthCheck);
		} else {
			$resultMsg.html("인증번호가 일치하지 않습니다. 다시 확인해주세요.");
			$resultMsg.css("color", "red");
			emailAuthCheck = "fail";
			console.log("emailAuthCheck = " + emailAuthCheck);
		}
	});
*/
});
