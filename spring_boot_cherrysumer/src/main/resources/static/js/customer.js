/**
 * 
 */
 
  $(document).ready(function(){
  
  $('#upBtn2').click(function(){
   var id = document.getElementById('memIdd').value;
  
alert(id);
 if(id==null){
  alert("로그인을 해주세요.")
  location.href="/boardList";
  }else{
   location.href="/customerinsert";
  };


});// click
});//완전 끝

