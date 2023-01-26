/**
 * 
 */
 
 

        function readImage(input) {
            if (input.files && input.files[0]) {
                const reader = new FileReader();

                reader.onload = (e) => {
                    const previewImage = document.getElementById('preview');
                    previewImage.src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        document.getElementById('upload').addEventListener('change', (e) => {
            readImage(e.target);
        });

    


    $(document).ready(function(){
    
    	var fileInput = document.getElementById("upload");
    	
    	var files = fileInput.files;
    	var file;
    	
    	for (var i = 0; i < files.length; i++){
    		
    		file = files[i];
    		
    		alert(file.name);
    		
    	}
    });
    
    
    
