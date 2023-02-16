/**
 * 
 */
 function customerCheck(memId) {
 var memId=memId
 if(memId==null){
  alert("로그인을 해주세요.")
  location.href="/boardList";
  }else{
   location.href="/customerinsert";
  };
	};