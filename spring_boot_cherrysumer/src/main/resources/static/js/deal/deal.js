/**
 * 
 */
 
  function dealCheck(){
  
  var buyerName = document.getElementById("buyerName");
	var buyerHP = document.getElementById("buyerHP");
	var buyerEmail = document.getElementById("buyerEmail");
	var buyerZipcode = document.getElementById("buyerZipcode");
	var buyeraddress1 = document.getElementById("buyeraddress1");
	var buyeraddress2 = document.getElementById("buyeraddress2");
	
            if(buyerName.value == "") {
                alert('받으시는 분 성함을 입력하세요.');
                buyerName.focus();
				return false;
            } 
          	 var num = /^[0-9]+/g;

			if (!num.test(buyerHP.value)) {
				alert("전화번호는 숫자만 입력하세요.")
				buyerHP.focus();
				return false;
			};
	
	
		            if (buyerEmail.value == "") {
				alert("이메일을 입력하세요.")
				buyerEmail.focus();
				return false;
			};
		            if (buyerZipcode.value == "") {
				alert("주소를 입력하세요.")
				buyerZipcode.focus();
				return false;
			};
		            if (buyeraddress1.value == "") {
				alert("주소를 입력하세요.")
				buyeraddress1.focus();
				return false;
			};
		            if (buyeraddress2.value == "") {
				alert("상세주소를 입력하세요.")
				buyeraddress2.focus();
				return false;
			};
           
  
  
 
 }; //종료
 
 