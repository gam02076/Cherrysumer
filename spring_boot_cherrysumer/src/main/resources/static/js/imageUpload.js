$(document).ready(function(){


 //   var ui = $('.uploadImage').get();

//    $('.uploadImage').each(function(index){
//      $(this).on("Click",function(){
//            alert(index);
  //      })
  //  });

    function readImage(input, previewImage) {
        if (input.files && input.files[0]) {
                const reader = new FileReader();
        
                reader.onload = (e) => {
                    //const previewImage = document.getElementById('preview');
                    previewImage.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    
        var uploadBtn = $('.uploadImage').get();
        var preview = $('.preview').get();
        
        $('.imageView').each(function(index) {    
                $(this).on('click', () => {
                        uploadBtn[index].click(); 
                        uploadBtn[index].addEventListener('change', (e) => {
                                readImage(e.target, preview[index]);
            });
        });        
    });
});

    // 1번 사진
 //       function readImage1(input) {
 //           if (input.files && input.files[0]) {
 //              const reader = new FileReader();
 //       
 //               reader.onload = (e) => {
 //                   const previewImage = document.getElementById('preview');
 //                   previewImage.src = e.target.result;
 //               }
 //               reader.readAsDataURL(input.files[0]);
 //          }
 //       }
        
//        document.getElementById('upload-image1').addEventListener('change', (e) => {
 //           readImage1(e.target);
 //       })
    
    // 2번 사진
 //       function readImage2(input) {
 //           if (input.files && input.files[0]) {
 //               const reader = new FileReader();
        
 //               reader.onload = (e) => {
 //                   const previewImage = document.getElementById('preview2');
 //                   previewImage.src = e.target.result;
 //               }
 //               reader.readAsDataURL(input.files[0]);
 //           }
 //       }
        
//        document.getElementById('upload-image2').addEventListener('change', (e) => {
 //           readImage2(e.target);
 //       })
        
        
        
 //       const uploadBtn = document.querySelector('#upload-image1');
 //       const uploadBtn2 = document.querySelector('#upload-image2');
 //       const uploadDiv = document.querySelector('.imageView1');
 //       const uploadDiv2 = document.querySelector('.imageView2');
        
 //       uploadDiv.addEventListener('click', () => uploadBtn.click());
 //       uploadDiv2.addEventListener('click', () => uploadBtn2.click());
 //   });
    
    
    