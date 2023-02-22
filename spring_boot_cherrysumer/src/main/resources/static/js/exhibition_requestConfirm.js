/**
 * exhibition_requestConfirm.js
 */
 
$(document).ready(function(){
    $('#exhAdminConfirm').on('submit',function(){
        // 폼이 submit되지 않도록 기본 기능 중단
        event.preventDefault();

        // confirm값 변수에 저장
        var confirm = $('#exhConfirm').val();
        //var test = $("select[name='exhConfirm']:checked").val();
        //alert(test);
        // 서버에 전송하고 결과 받아서 처리 (Ajax 불러옴)
        $.ajax({
            type:"post",
            url:"/exhibition/adminConfirm",
            data: {"exhConfirm":confirm},
            dataType:"text",
            success:function(result){
                if(result== "success")
                    message = "저장하였습니다.";
                else
                    message = "저장하지 못하였습니다.";
                alert(message);
            },
            error:function(){ // 오류가 났으면
                alert("실패");
            }
        });
    }); // submit 종료
});