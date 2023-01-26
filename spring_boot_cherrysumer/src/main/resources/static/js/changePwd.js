/**
 * signup.js
 */
function signupCheck() {
	var memId = document.getElementById("memId");
	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");

	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		return false;
	};

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
	document.changePwd.submit();
};