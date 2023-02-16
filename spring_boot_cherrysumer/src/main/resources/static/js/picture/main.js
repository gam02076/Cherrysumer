/**
 * 
 */
 
 
 window.addEventListener("load", function(){
  var body = document.querySelector("body");

  body.addEventListener("mousemove", function(e){
    e.preventDefault();

    var cursor = document.querySelector(".cursor");
    var width = parseInt(window.getComputedStyle(cursor).width);
    var height = parseInt(window.getComputedStyle(cursor).height);
    var top = e.y - height/2;
    var left = e.x - width/2;

    cursor.style.top = top + "px";
    cursor.style.left = left + "px";
  });

  body.addEventListener("mouseenter", function(e){
    var cursor = document.querySelector(".cursor");
    cursor.classList.remove("out");
  });
  body.addEventListener("mouseleave", function(e){
    var cursor = document.querySelector(".cursor");
    cursor.classList.add("out");
  }); 
});