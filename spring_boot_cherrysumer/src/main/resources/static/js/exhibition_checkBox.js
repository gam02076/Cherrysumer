/**
 *  exhibition_checkBox.js
 */
 function checkOnlyOne(element) {
  
  const checkboxes 
      = document.getElementsByName("artMain");
  
  // 체크 하나만 되도록 하기.
  checkboxes.forEach((cb) => {
    cb.checked = false;
  })
  
  element.checked = true;
  
  // 체크되면 값 : 1, 체크 안 되면 : 0
 if(document.getElementById("artMain").checked){
 	document.getElementById("artMain_hidden").disabled = true;
 }
}

