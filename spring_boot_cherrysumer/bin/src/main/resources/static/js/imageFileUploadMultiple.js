/**
 * 
 */
$(document).ready(function(){
    $('#fileUploadFormMulti').on('submit',function(){

        // alert("aa");

        event.preventDefault();// 폼에 지원은 안하고 ajax로 할거라서.

        // 폼 데이터 읽어오기
        var formData = new FormData($('#fileUploadFormMulti')[0]);

        //ajax 복사해옴
        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type:"post",
            url:"/fileUploadMultiple",
            enctype:"multipart/form-data",
            processData:false, //기본으로 false해둠. 멀티파트로 가게 하기 위해
            contentType:false,
            data:formData,
            success:function(result){
                // alert(result);
                for(var i=0; i<result.length; i++){
                    // 방법1
                    //$('#multiListBox').html($('#multiListBox').html()+result[i] + '<br>');  
                    // <div>html</div> 
                    //파라미터 값이 없으면 값을 가져옴.
                    // jquery html 사용하는 법.    

                    //방법 2. (append)     
                    $('#multiListBox').append(result[i] + '<br>'); 
                }
            },
            error:function(){
                alert("실패");
            },
            complete:function(){
                //alert("작업 완료");
            }
        }); // ajax 종료 	
    });
});