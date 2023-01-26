/**
 * signup.js
 */
function signupCheck() {
	var memId = document.getElementById("memId");
	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");
	var memName = document.getElementById("memName");
	var memHP = document.getElementById("memHP");
	var memEmail = document.getElementById("memEmail");
	var memZipcode = document.getElementById("memZipcode");
	var memType = document.getElementById("memType");

	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		return false;
	};
	
	if($("input[name='checked_id']").val()==''){
        alert('아이디중복 확인을 해주세요.');
        $("input[name='checked_id']").eq(0).focus();
        return false;
    	}

	if (memPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		memPwd.focus();
		return false;
	};

	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(memPwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		memPwd.focus();
		return false;
	};

	if (memPwd2.value !== memPwd.value) {
		alert("비밀번호가 일치하지 않습니다.")
		memPwd2.focus();
		return false;
	};

	if (memName.value == "") {
		alert("이름을 입력하세요.")
		memName.focus();
		return false;
	};

	var num = /^[0-9]+/g;

	if (!num.test(memHP.value)) {
		alert("전화번호는 숫자만 입력하세요.")
		memHP.focus();
		return false;
	};

	if (memEmail.value == "") {
		alert("이메일을 입력하세요.")
		memEmail.focus();
		return false;
	};
	
	if (memZipcode.value == "") {
		alert("주소를 입력하세요.")
		memZipcode.focus();
		return false;
	};
	
	if (memType.value == "") {
		alert("회원 유형을 선택해주세요.")
		memType.focus();
		return false;
	};

	document.signUpForm.submit();
};