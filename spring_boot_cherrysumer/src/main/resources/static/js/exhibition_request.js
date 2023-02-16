/**
 * detail
 */
 
$(document).ready(function(){
  	
    $('#requestForm').on('submit', function  () {
        // 기본 이벤트 취소 안함. 그대로 일어남. 기본 이벤트가 전시회 정보 요청하는 url 일어남.
        // 폼 데이터 읽어 오기
       var formData = new FormData($('#requestForm')[0]);
       
       $.ajax({
           type:"post",
           // submit 하면 기본 이벤트 취소 안하고, 기본이벤트에 추가되어 아래 url 이벤트도 별도로 하나 더 ajax추가하여 이벤트 일어남.
           url:"/insert_exhibition_request_art",
           enctype: 'multipart/form-data',
           processData:false,
           contentType:false,
           data:formData,
          success:function(result){
              alert(result);              
              location.href("/"); // root로 이동. (기본 form의submi
          },
          error:function(){
              // 오류있을 경우 수행 되는 함수
              alert("전송 실패");
          }
       }); // ajax 끝
    });
  
    /*
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
 		
 	*/
    
    
 
 
 }); //종료
 
 