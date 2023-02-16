console.clear();

function slide(){
  var $this = $(this);
  var $btnSlide = $this.closest('.btn-slide');
  var NowAnimating = $btnSlide.attr('data-now-animating');
  var $btnLeft = $this.index() == 0;
  var $slider = $this.closest('.slider');
  var $slides = $slider.find('> .slides > div');
  var $activeSlide = $slider.find('> .slides > div.active');
  var $activePost;
  
  /*클릭 중복 방지*/
  if (NowAnimating == 'Y') {
    return;
  }
  
  /*트랜지션 제거*/
  $slides.removeClass('rm-active');
  
  /*버튼이 왼쪽 일 때*/
  if ($btnLeft) {
    slide_left($slides,$activeSlide);
  }
  
  /*버튼이 오른쪽 일 때*/
  else{
    slide_right($slides,$activeSlide);
  }
  
  /*클릭 중복 방지*/
  $btnSlide.attr('data-now-animating','Y');
  /*1초마다 실행*/
  setTimeout(function(){
    $btnSlide.attr('data-now-animating','N');
  }, 1000);
}

function slide_left($slides,$activeSlide){
  $slides.removeClass('right-set');
  $activePost = $activeSlide.prev();
  if ($activePost.length == 0) {
    $activePost = $('.slider > .slides > div:last-child');
  }
  $slides.not('active').addClass('left-set');
  
  /*액티브 였던 슬라이드 오른쪽 이동*/
  $activeSlide.addClass('rm-active');
  $activeSlide.removeClass('left-set');
  $activeSlide.addClass('right-set');
  $activeSlide.removeClass('active');
  $activePost.addClass('active');
  $activePost.removeClass('left-set');
}

function slide_right($slides,$activeSlide){
  $slides.removeClass('left-set');
  $activePost = $activeSlide.next();
  if ($activePost.length == 0){
    $activePost = $('.slider > .slides > div:first-child');
  }
  $slides.not('active').addClass('right-set');
  /*액티브 였던 슬라이드 왼쪽 이동*/
  $activeSlide.addClass('rm-active');
  $activeSlide.removeClass('right-set');
  $activeSlide.addClass('left-set');
  $activeSlide.removeClass('active');
  $activePost.addClass('active');
  $activePost.removeClass('right-set');
}

function slide_init(){
  $('.slider > .btn-slide > div').click(slide);
}

$(function(){
  slide_init();
})


