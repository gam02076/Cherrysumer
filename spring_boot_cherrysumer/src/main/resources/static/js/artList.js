/**
 * detail
 */
 
  $(document).ready(function(){
  
   $(".box").click(function(){

    $("#Detailmodal").fadeIn('slow');
    
    $.ajax({
 			type:"post",
 			url:"/artDetail",
 			data:{picNo:$(this).attr("id")}
 			,
 			success:function(result){
 				$("#Detail_content").html(result);
 				
 			},
 			error:function(){
 			},
 			complete:function(){
 			}
 		}); // ajax 종료 
    
  });
  
  
  $("#Detailmodal").click(function(){
    $("#Detailmodal").fadeOut();
  });
  
  
  
   //$('.frmclick').on('click',function(){
   
   //event.preventDefault();
   
  // $(this).submit();});
    
 
 
 }); //종료
 
 