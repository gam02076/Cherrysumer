/**
 * chatbot.js
 */
 
$(document).ready(function(){

    // 웰컴메시지 받기 위해 
    // message 입력 받기 전에 빈값으로 서버에 전송하고 결과 받음
    callAjax(); // 빈 값의 message가 서버로 전송 

    $('#chatbotForm').on('submit',function(){
        //폼이 submit되지 않도록 기본 기능 중단
        event.preventDefault();

        // message가 빈 값인 경우 확인 메시지 출력
        if($('#message').val() == ""){
            alert("시선 챗봇입니다. 문의하고싶으신 사항을 입력하여주세요.");
            $('#message').focus();
            return false;
        }

        // 챗봇 창에 보낸 메시지 추가
        $('#chatBox').append('<div class="msgBox send"><span id="in"><span>'+ $('#message').val()+ '</span></span></div><br>');

        callAjax();

        $('#message').val(''); //입력란 비우기
    }); //submit 종료
    
    function callAjax() {

        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type: "post",
            url: "/chatbot",
            data: {"message":$('#message').val()},
            success:function(result){
                // 챗봇 창에 받은 메시지 추가
                $('#chatBox').append('<div class="msgBox receive"><span id="in"><span><b>시선 See-Sun</b></span><br><span>'
                                     + result + '</span></span></div><br>');

                // 스크롤해서 올리기 : 스크롤 높이 값으로 scrollTop 설정
                $('#chatBox').scrollTop($('#chatBox').prop("scrollHeight"));
            },
            error:function(){
                alert("실패");
            }
        }); //ajax 종료
    }
}); // 종료
