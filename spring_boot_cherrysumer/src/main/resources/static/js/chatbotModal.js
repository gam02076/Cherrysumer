/**
 * chatbotModal.js
 */
 
$(document).ready(function(){
    $("#chatBtn").click(function(){
       // alert("챗봇");
    //$("#selectmemId").val($(this).attr("id")); //id값 저장 후 #selectmemId로 보냄
    //alert($(this).find("img").attr("src"));
    
      //$("#modal_img").attr("src",$(this).find("img").attr("src"));
    
      $(".modal").fadeIn('slow'); //'slow', 'fast' 가능 천천히 나타남
    });
    
    
    $("#btnClose").click(function(){
      $(".modal").fadeOut();
    });
  
  }); //종료