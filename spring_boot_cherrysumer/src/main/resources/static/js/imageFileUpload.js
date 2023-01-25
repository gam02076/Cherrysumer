/**
 * 대표 이미지 파일 업로드.js
 */
 
 $(document).ready(function(){
    $('#imageFileForm').on('submit',function(){
        event.preventDefault();

        //폼 데이터 읽어오기
        var formData = new FormData($('#imageFileForm')[0]);

        // 업로드 된 파일명 알아오기
        var fileName = $('#uploadFile').val().split("\\").pop();

        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type:"post",
            url:"exhibition_request",
            enctype:"multipart/form-data",
            processData:false, //기본으로 false해둠. 멀티파트로 가게 하기 위해
            contentType:false,
            data:formData,
            success:function(result){
                if(result == "success"){
 					$('#imageBox').html('<img src="/image/' + fileName + ' ">');
                	//$('#imageBox img').css({'height':'660px','width':'auto'});
                	//$('#imageBox img').css({'display':'block','margin':'auto'});

                }
            },
            error:function(){
                alert("실패");
            },
            complete:function(){
                //alert("작업 완료");
            }
        }); // ajax 종료 	
    });// submit 종료
});
 