/**
 * 
 */
  $(window).on("load", function () {
    function fade() {
      let animation_height = $(window).innerHeight() * 1.5;
      let ratio = Math.round((1 / animation_height) * 10000) / 6000;
      $(".show3-1").each(function () {
        let objectTop = $(this).offset().top;
        let windowBottom = $(window).scrollTop() + $(window).innerHeight();
        if (objectTop < windowBottom) {
          if (objectTop < windowBottom - animation_height) {
            $(this).css({
              transition: "opacity 1s linear",
              transition: "left 0.1s linear",
              opacity: 1,
              left: "0px",
            });
          } else {
            $(this).css({
              transition: "opacity 1s linear",
              opacity: (windowBottom - objectTop) * ratio,
              transition: "left 0.5s linear",
              left: `${200 * (1 - (windowBottom - objectTop) * ratio)}px`,
            });
          }
        } else {
          $(this).css({
            opacity: 1,
            left: "200px",
          });
        }
      });
    }
    $(".left").css({
      opacity: 1,
      left: "200px",
    });
    fade();

    $(window).scroll(function () {
      fade();
    });
  });
  
  
 