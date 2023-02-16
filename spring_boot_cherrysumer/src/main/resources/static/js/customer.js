/**
 * 
 */
 function customerCheck(memId) {
 var id=memId
 if(id==null){
  alert("로그인을 해주세요.")
  location.href="/boardList";
  }else{
   location.href="/customerinsert";
  };
};