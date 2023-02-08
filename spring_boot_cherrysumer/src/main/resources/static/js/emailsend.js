/**
 * 
 */
 
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
				url: "/member/nameCheck",
				data: {"findIdName": $('#findIdName').val(),
					  "findIdEmail" : findIdEmail
				},
				dataType: 'text',
				success:function(result) {
					if(result == 'data') { 
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
	$("#codeCheckBtn").on('click', function() {
		const inputCode = $(this).val();

		if($('#findIdCode').val() == code) {
			alert('인증번호가 일치합니다.');
			emailAuthCheck = "success";
			console.log("emailAuthCheck = " + emailAuthCheck);
		} else {
			alert("인증번호가 일치하지 않습니다. 다시 확인해주세요.");
			emailAuthCheck = "fail";
			console.log("emailAuthCheck = " + emailAuthCheck);
		}
	});
	
});