<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전시회1</title>
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/exhibition_1.css'/>">
	    <link rel="stylesheet" type="text/css" href="<c:url value='/css/header.css'/>">
	    <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/exhibition_1.js'/>"></script>
	    <style> 
	        @import url('https://fonts.googleapis.com/css2?family=Gowun+Batang&family=Kaisei+Tokumin:wght@500&family=Noto+Serif+KR&family=Sofia+Sans+Semi+Condensed&family=Titillium+Web&display=swap'); 
	    </style>
	</head>
	<body>
		<c:import url = "/WEB-INF/views/layout/top.jsp"/>
		
	    <section class="background first">
	        <div id="text_header">
	            <div id="painter">
	                ${evo.exhName }
	            </div>
	            <div class="title eng">
	                haze of Spring |
	            </div>
	            <div class="title kor">
	                봄의 아지랑이
	            </div>
	            <div id="date">
	                Until 5 March 2023
	            </div>
	        </div>         
	    </section>
	
	    <section> 
	        <div class="background bg-textPic">
	            <div class="text firstText">
	                <font size="6">우</font>리의 인생은 언제나 <font size="6" color="forestgreen">봄</font>이다<br>
	                <font size="3">- 신명숙 </font><br><br>
	                Life is a journey<br>
	                <font size="3">- ralph waldo emerson</font>
	            </div>
	        </div>
	    </section>  
	    <section class="background bg-pic1"></section>
	    <section class="background article">
	        <img src="<c:url value='/image/exh_person1.png'/>" class="person">
	        <div class="text interview">
	            요즘에 다들 마음 한 편에 불안함과 외로움을 갖고 살잖아요.<br>
	            저도 그렇고 행복한 시간보다 견디는 시간이 더 많았던 것 같아요.<br>
	            그렇지만 인생은 축복이라고 믿고싶어요. <br>
	            의미 없는 순간과 시간은 없다고 생각해요.<br>
	            그래서 제 인생은 늘 봄이었어요. <br>
	            이렇게 말하면 사람들은 제가 늘 행복했었다고 생각해요. <br>
	            사실은 그 반대죠. <br>       
	        </div>
	    </section>
	    <section class="background bg-pic2">
	    </section>
	    <section class="background article">
	        <img src="<c:url value='/image/exh_glass.jpg'/>" class="pic pic3">
	        <div class="text article2">
	           <i> 춘천 문화센터, 2017</i><br>
	        </div>
	    </section>
	
	    <section class="background bg-pic3"></section>
	    <section class="background exhibition">
	        <div class="paintBox">
	            <div class="paint paint1"></div>  
	            <div class="paint paint2"></div>  
	            <div class="paint paint3"></div>    
	        </div>
	        <div class="picTitleBox">
	            <div class="picTitle picT1">평화 속 고요함<br>Silence in Peace<br>250x325 cm</div>
	            <div class="picTitle picT2">햇살<br>in the Sunshine<br>250x325 cm</div>
	            <div class="picTitle picT3">정원 가꾸기<br>Gardening<br>250x325 cm</div>
	        </div>
	    
	        <div class="explain">
	            그림을 클릭하시면 상세한 설명을 확인할 수 있습니다
	        </div>
	    </section>
	
	    <!-- <section class="background bg-pic3"></section>
	    <section class="background exhibition2">
	        <div class="paintBox">
	            <div class="bigPaint bp1"></div>  
	            <div class="text interview2">
	                비둘기의 개체수가 많아지면서 사람들에게 해코지당하거나 거슬리게 생각되어지는 것을 많이 봐왔어요.
	                한 때는 평화의 상징이던 비둘기가 이젠 하찮게 여겨지게 된 것이죠.
	                물론 희소성이 낮아지면서 자연스러운 일로 생각할 수도 있지만,
	                과연 현대 사회와 무관할 수 있을지..
	                저는 거기서 사회적 현상과 연관시켜보고싶었어요.
	                
	                번영을 상징하는 금색과 평화의 비둘기로 
	
	                제목 : 번영을 향한 날갯짓
	            </div>    
	        </div>
	    </section> -->
	
	    
	
	    <section class="background bg-pic4">
	        <div class="text2">
	            <!-- 희망은 보이지 않는 게 아니라, 도전이 만들어 낸 또 다른 도전의 모습으로 당신 앞에 서 있습니다 -->
	            오랫동안 꿈을 그리는 사람은 마침내 그 꿈을 닮아간다.<br><br>
	             -니체
	        </div>
	    </section>
	    <section class="background exhibition">
	        <div class="paintBox">
	            <div class="paint paint4"></div>  
	            <div class="paint paint5"></div>  
	            <div class="paint paint6"></div>    
	        </div>
	        <div class="picTitleBox">
	            <div class="picTitle picT1">해바라기<br>sunflowers<br>250x325 cm</div>
	            <div class="picTitle picT2">고사리<br>bracken<br>250x325 cm</div>
	            <div class="picTitle picT3">희망이 자라는 곳<br>a place where hope grows<br>250x325 cm</div>
	        </div>
	        <div class="explain">
	            그림을 클릭하시면 상세한 설명을 확인할 수 있습니다
	        </div>
	    </section>
	
	    <section> 
	        <div class="background end">
	            <div class="text firstText ending">
	                제 작품이 사람들 마음에 한 줄기 빛으로 남았으면 좋겠어요.&nbsp;
	                <font size="3">- 신명숙 </font><br><br>
	            </div>
	            <div id="GotoPainter">
	                작가 보러 가기
	            </div>
	        </div>
	    </section>  
	
	</body>
</html>