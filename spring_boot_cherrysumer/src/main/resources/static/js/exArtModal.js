/**
 *  전시회 모달창
 */
 
  $(document).ready(function(){
  
   $(".paint").click(function(){
    $("#Detailmodal").fadeIn('slow');
    
    	var artImg=$(this).attr("id");
    	//alert(artImg);
    	//$('#Detail_content').css("background-image", "url('/image/" + artImg + "')");
    	$("#exBigArt").attr("src", "<c:url value='/image/"+artImg+"/>");
  });
  
  
  $("#Detailmodal").click(function(){
    $("#Detailmodal").fadeOut();
  });
  
 
 
 }); //종료