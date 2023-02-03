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
 
 
 
 /* $(document).ready(function() {
	var emailAuthCheck = "fail";
	const domain = "@";

	// 인증번호 받기 버튼 클릭시
	$('#mailCheckBtn').on('click', function() {
		var email = $('#insertEmail').val() + domain + $('#domainText').val();
		// 입력한 메일 값 가져옴
		console.log("완성된 이메일 : " + email);
		// 인증번호
		const checkInput = $('#mailCheckInput');

		if($('#memName').val() == "") {
			alert("이름을 입력해주세요.");
		} else {
			$.ajax({
				type:'post',
				url: "/member/nameCheck",
				data: {"memName": $('#memName').val(),
					  "memEmail" : email
				},
				dataType: 'text',
				success:function(result) {
					if(result == "data") { 
						$.ajax({
							type:'post',
							url: "/emailCheck",
							data: {"email": $('#insertEmail').val() + domain +  $('#domainText').val()
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
	$("#mailCheckInput").on('keyup', function() {
		const inputCode = $(this).val();
		const $resultMsg = $('#mailCheckWarn');

		if(inputCode === code) {
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css("color", "green");
			$('#mailCheckBtn').attr("disabled", true);
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


	// 이메일을 선택하여 입력
	$('#domainList').on("change", function(){
		// 직접입력이 아니면
		if(event.target.value !== 'directInput'){
			// 선택값을 텍스트에 넣고 텍스트창 막음
			$("#domainText").val(event.target.value);
			$("#domainText").attr("readonly", true);
		} else {
			// 공백을 넣고 텍스트창 오픈
			$("#domainText").val('');
			$("#domainText").attr("readonly", false);
		}
	});

	// id찾기 다음버튼 클릭시 (미완성)
	$('#idNextBtn').on('click', function() {
		var email = $('#insertEmail').val() + domain + $('#domainText').val();
		var memName = $('#memName').val();
		if(emailAuthCheck == "success"){
			location.href='/member/idSearchResult/'+memName+'/'+email+'';
		} else if(memName == "") {
			alert("이름을 입력해주세요.");
		} else if($('#insertEmail').val() == "") {
			alert("이메일을 입력해주세요.");
		} else if($('#domainText').val() == "") {
			alert("이메일을 확인해주세요.");
		}
	});
});
*/