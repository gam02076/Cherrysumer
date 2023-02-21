/**
 * 
 */
 
  $(document).ready(function(){
  
  $('#upBtn2').click(function(){
   var id = document.getElementById('memId').value;
 if(id==""){
  alert("로그인을 해주세요.")
  location.href="/member/login";
  }else{
   location.href="/customerinsert";
  };


});// click
});//완전 끝

