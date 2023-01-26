/**
 * 
 */
 
 
 
 var menuBtn = document.querySelector('.menu');
var nav = document.querySelector('.a');

var link = document.querySelector('nav .nav-links');


menuBtn.addEventListener('click', () => {
    nav.classList.toggle('nav-open');
   
    link.classList.toggle('fade-in');
})