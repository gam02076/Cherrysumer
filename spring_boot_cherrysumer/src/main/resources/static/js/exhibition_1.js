/**
 *  전시회 1 (exhibition_1.js)
 */
 var lastScrollTop =0, delta=15;

$(window).scroll(function(){
    var scrollTop = $(this).scrollTop()
    if(Math.abs(lastScrollTop - scrollTop) <= delta)
    return;

    if((scrollTop > lastScrollTop) && (lastScrollTop>0)){
        $(".header").css("top","-140px");
    }else{
        $(".header").css("top","0px");
    }
    lastScrollTop = scrollTop;
});

$(function(){
    var $header = $('.header'); //헤더를 변수에 넣기
    var $page = $('.first'); // 색상이 변할 부분
    var $window = $(window);
    var pageOffsetTop = $page.offset().top; // 색상 변할 부분의 top값 구하기

    $window.resize(function(){ //반응형을 대비하여 리사이즈시 top값을 다시 계산
        pageOffsetTop = $page.offset().top;
    });

    $window.on('scroll',function(){ //스크롤시
        var scrolled = $window.scrollTop() >= pageOffsetTop; //스크롤된 상태; true or false
        $header.toggleClass('down',scrolled);  // 클래스 토글
    });
})

//네비바 드롭다운
$(document).ready(function(){ // 브라우저 페이지가 모두 열렸을 때 아래의 함수기능을 수행해라
    $("header").hover(function(){ //.nav 클래스명을 가진 엘리먼트(=요소)가 마우스로 호버(hover)되면 아래 함수를 수행하라는 명령이다.
        $("#sliding",this).stop().slideDown(350); // 아이디가 sliding_menu라는 엘리먼트를 slidingDown(시간) 함수로 보이게 한다. 1000이 1초
    },
    function(){ //그리고 마우스가 nav를 떠나면 아래를 수행하라는 명령이다.
        $("#sliding",this).stop().slideUp(350); //마우스가 nav를 떠나면 SlideUp함수로 드롭다운 메뉴를 다시 숨긴다.
    });
});