/**
 * modal
 */
 

 $(document).ready(function(){

	
  $(".artist-list").click(function(){
  
  //var memId=$("#selectmemId").val($(this).attr("id")); //id값 저장 후 #selectmemId로 보냄
  //alert($(this).find("img").attr("src"));
  // var Id=$(this).attr("id");
   
	//$("#modal_img").attr("src",$(this).find("img").attr("src"));
  
    $(".modal").fadeIn('slow');
    
    
    
    $.ajax({
 			type:"post",
 			url:"/artistModal",
 			data:{memId:$(this).attr("id")},
 			success:function(result){
 			$(".modal").html(result);
 			},
 			error:function(){
 			
 			},
 			complete:function(){
 				
 			}
 		}); // ajax 종료
  });
  
  
  $(".modal").click(function(){
    $(".modal").fadeOut();
  });
  
  
	$(".right").hover(function(){
  	
  	LeftMoving();
  
  }, function() {
        $('#main').stop();
        
    }); //mouseover 종료
  
  function LeftMoving(){
  	
  	 var _scrollX = $('#main').scrollLeft();
  	 $('#main').animate({'scrollLeft':_scrollX + 1500},2000, null, function () { 
		LeftMoving(); })
		
  	 };
  	 
  	 function RightMoving(){
  	
  	 var _scrollX = $('#main').scrollLeft();
  	 $('#main').animate({'scrollLeft':_scrollX - 1500},2000, null, function () { 
		RightMoving(); })
		
  	 };
  
  
  $(".left").hover(function(){
  	
  	RightMoving();
  
  }, function() {
        $('#main').stop();
        
    });
    
  
  
}); //종료