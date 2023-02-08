/**
 * 
 */
 
  $(document).ready(function(){
  
   $(".myButton").click(function(){
  
  
    $.ajax({
 			type:"post",
 			url:"/dealcheck",
 			data:{picNo:$(this).attr("id")}
 			,
 			success:function(result){
 			},
 			error:function(){
 			},
 			complete:function(){
 			}
 		}); // ajax 종료 
    
  });
  
  
 
 }); //종료
 
 
 
 
 
 
 
 $.ajax({
    type : 'post',           // 타입 (get, post, put 등등)
    url : '/test',           // 요청할 서버url
    
    dataType : 'text',       // 데이터 타입 (html, xml, json, text 등등)
    data : JSON.stringify({  // 보낼 데이터 (Object , String, Array)
      "no" : no,
      "name" : name,
      "nick" : nick
    }),
    success : function(result) { // 결과 성공 콜백함수
        console.log(result);
    },
    error : function(request, status, error) { // 결과 에러 콜백함수
        console.log(error)
    }
})