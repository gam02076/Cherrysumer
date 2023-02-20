/**
 * modal
 */
 

 $(document).ready(function(){
  $("#redirect").click(function(){
	location.reload();
	$('#filterTb').css("background","black");
	});
 
  $(".picImg").click(function(){
	event.preventDefault();
  
  $(".modal").fadeIn();
  //$('.modal').css("display","block");
    var picImg = $(this).attr("id");
    $('.modal').html("<img src='images/" + picImg + "' id='modalImg'>");
    
  });
  
  
  $(".modal").click(function(){
 // $('.modal').css("display","none");
    $(".modal").fadeOut();
  });

	}); // 끝, 종료
	
	
	 function nopass(picNo){    
        alert(picNo);
        var picNo=picNo;
         $.ajax({
 			type:"post",
 			url:"nopass",
 			data:{picNo:picNo},
 			success:function(result){
	 			alert("승인 X");
	 			location.reload();
 			},
 			error:function(){
 			alert("실패");
 			},
 			complete:function(){
 				
 			}
 		}); // ajax 종료 
 		
    }
    
function pass(picNo){    
        alert(picNo);
        var picNo=picNo;
         $.ajax({
 			type:"post",
 			url:"pass",
 			data:{picNo:picNo},
 			success:function(result){
	 			alert("승인 되었습니다");
	 			location.reload();
 			},
 			error:function(){
 			alert("실패");
 			},
 			complete:function(){
 				
 			}
 		}); // ajax 종료 
 		
    }