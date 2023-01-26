/**
 * 
 */
 
 let text = document.querySelector("#tt");

window.addEventListener('scroll',function(){

let value = window.scrollY

console.log("scrollY", value);

if (value > 873){
    
text.style.animation = "disappear 2s ease-out forwards" ;


}else {
    text.style.animation = "slide 2s ease-out  " 
}
}) ; 
 