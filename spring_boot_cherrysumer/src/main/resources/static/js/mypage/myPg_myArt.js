/**
 * myPg_myArt.js
 */
 
 
 $(document).ready(function(){
  
   $(".update").on('click',function(){
    $.ajax({
 			type:"post",
 			url:"myArtDate",
 			data:{"picNo":$(this).attr('id')},
 			success:function(result){
 				$("#Detail_content").html(result);
 				
 			},
 			error:function(){
 			alert("에러");
 			},
 			complete:function(){
 			}
 		}); // ajax 종료 
 		
 		$("#Detailmodal").fadeIn('slow');
    
  });
  
  
  $(".btn_1").click(function(){
    $("#Detailmodal").fadeOut();
  });
  
  $(".delete").on('click',function(){
  alert($(this).attr('id'));
  	if(confirm("삭제하시겠습니까? \n삭제 후 복구할 수 없습니다.")){
    $.ajax({
 			type:"post",
 			url:"delete",
 			data:{"picNo":$(this).attr('id')},
 			success:function(result){
 			alert("삭제되었습니다");
 				refreshArtList();
 			},
 			error:function(result){
 			alert("에러");
 			},
 			complete:function(){
 			}
 		}); // ajax 종료 
 		}else{
 		alert("아니오");
 		}
    
  });
    
 	function refreshArtList(){
		location.reload();
	}
 
 }); //종료
 
 