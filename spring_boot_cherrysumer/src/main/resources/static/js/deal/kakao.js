/**
 * 
 */
 














let index = {
		init:function(){
	        $("#btn-kakaopay").on("click", ()=>{ // function(){}를 사용안하고 , ()=>{}를 사용하는 이유는 this를 바인딩하기 위해서
				this.kakaopay();
			});
		},

	  // 카카오페이 결제
		kakaopay:function(){
			
			$.ajax({
				url:"kakaopay",
				dataType:"json"
			}).done(function(resp){
				if(resp.status === 500){
					alert("카카오페이결제를 실패하였습니다.")
				} else{
					 // alert(resp.tid); //결제 고유 번호
					var box = resp.next_redirect_pc_url;
					//window.open(box); // 새창 열기
					location.href = box;
				}
			
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
			
		},
	}

	index.init();
	