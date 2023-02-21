/**
 * 
 */
 
  $(document).ready(function(){
  
  
  $('#dealcheckinsert').on('submit', function(){
   event.preventDefault();
   var formData = $(this).serialize();
   
  
   var picType = document.getElementById('picType').value; 
   var price = document.getElementById('pictotal').value; //price <아이디를 가진 value값을 price라는 변수에 넣어줌.
  var picName = document.getElementById('picName').value; //price <아이디를 가진 value값을 price라는 변수에 넣어줌.
  //alert(price);
  //alert(picName);
 var IMP = window.IMP; 
    IMP.init('imp46756083'); //가맹점코드(발급받은것) 수정X
    
        var today = new Date();   
        var hours = today.getHours(); // 시
        var minutes = today.getMinutes();  // 분
        var seconds = today.getSeconds();  // 초
        var milliseconds = today.getMilliseconds();
        var makeMerchantUid = hours +  minutes + seconds + milliseconds;
 //$("input[name='payment']").change(function(){
	var test = $("input[name='payment']:checked").val();

if($("input[name='payment']:checked").val() == '카카오'){
  
    IMP.request_pay({
    	pg : "kakaopay", 
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(), //주문 번호 각각 다르게 해야함, 수정X.
        name : picName, //상품 이름
        amount : price, // 가격
        buyer_email : 'ee@na',
        buyer_name : 'ㅂㅇㅂ',
        buyer_tel : '010-123-456',
        buyer_addr : 'ㅁㄴ으,ㅁㄴㅇㄹ호ㅓ',
        buyer_postcode : 'ㅂㅈㄹㄴ옫',
        m_redirect_url : '/' //redirect url
    }, function(rsp) {
        if ( rsp.success ) {
            insertDB(formData);
        } else {
        	alert('결제에 실패하였습니다.');
            
        }
    }); //카카오종료
    }//if문 종료
    
    else if($("input[name='payment']:checked").val() == '토스'){
  
        

            IMP.request_pay({
                pg : 'tosspay.tosstest',
                pay_method : 'card',
                merchant_uid: "order_no_0001"+makeMerchantUid, //상점에서 생성한 고유 주문번호
                name : picName,   //필수 파라미터 입니다.
                amount : price,
                buyer_email : 'iamport@siot.do',
                buyer_name : '구매자이름',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
               notice_url: 'https://helloworld.com/api/v1/payments/notice',
  confirm_url: 'https://helloworld.com/api/v1/payments/confirm',
            }, function(rsp) {
        if ( rsp.success ) {
            insertDB(formData);
        } else {
        	alert('결제에 실패하였습니다.');
            
        }
            });//토스 종료
  
   
    }// else if 토스 종료
    else if($("input[name='payment']:checked").val() == '다날'){
  
  	var IMP = window.IMP; 
        IMP.init("imp46756083"); 
        
            IMP.request_pay({
                pg : 'danal_tpay',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : picName,
                amount : 100,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456'
            }, function(rsp) {
        if ( rsp.success ) {
            insertDB(formData);
        } else {
        	alert('결제에 실패하였습니다.');
            
        }
            });
  
   
    }// else if 다날 종료
    
    else if($("input[name='payment']:checked").val() == '페이코'){
  
            IMP.request_pay({
                pg : 'payco.PARTNERTEST',
                pay_method : 'card',
                merchant_uid: "IMP"+makeMerchantUid, 
                name : picName,
                amount : price,
                buyer_email : 'Iamport@chai.finance',
                buyer_name : '아임포트 기술지원팀',
                buyer_tel : '010-1234-5678',
                buyer_addr : '서울특별시 강남구 삼성동',
                buyer_postcode : '123-456',
                card: {
                     direct: {
                        code: "367",
                        quota: 3
                    }
                }
             }, function(rsp) {
        if ( rsp.success ) {
            insertDB(formData);
        } else {
        	alert('결제에 실패하였습니다.');
            
        }
            });//페이코 종료
  
   
    }// else if 페이코 종료
    
    
    
    //}); //$("input[name='payment']").change(function(){
    
  }); // submit 종료
     
    
    function insertDB(formData){
	
 		$.ajax({
 			type:"post",
 			url:"/dealcheckinsert",
 			data:formData,
 			success:function(view){
 			  alert('결제가 완료되었습니다.');
 			  if(picType=1){
 			  alert(view);
 			  //href="/picture/photo_list/";
 			  }else{
 			  alert(view);
 				//href="/picture/picture_list/";
 				}
 			},
 			error:function(){
 				alert("오류");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료
 		
 		}
 		
    });//끝 