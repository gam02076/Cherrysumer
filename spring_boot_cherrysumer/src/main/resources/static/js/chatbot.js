/**
 * chatbot.js
 */
 
$(document).ready(function(){
    $('#chatbotForm').on('submit',function(){
        //폼이 submit되지 않도록 기본 기능 중단
        event.preventDefault();

        // 챗봇 창에 보낸 메시지 추가
        $('#chatBox').append('<div class="msgBox send"><span id="in"><span>'+ $('#message').val()+ '</span></span></div><br>');

        // 서버에 전송하고 결과 받아서 처리
        $.ajax({
            type: "post",
            url: "/chatbot",
            data: {"message":$('#message').val()},
            success:function(result){
                // 챗봇 창에 받은 메시지 추가
                $('#chatBox').append('<div class="msgBox receive"><span id="in"><span>시선 챗봇</span><br><span>'
                                     + result + '</span></span></div><br>');

                // 스크롤해서 올리기 : 스크롤 높이 값으로 scrollTop 설정
                $('chatBox').scrollTop($('#chatBox').prop("scrollHeight"));

            },
            error:function(){
                alert("실패");
            }
        }); //ajax 종료

        $('#message').val(''); //입력란 비우기
    }); //submit 종료
}); // 종료
