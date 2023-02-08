/**
 * countDount.js
 */

  $(document).ready(function(){
//var End = document.getElementByclass("EndDate").value;
var EndDate = $('.EndDate').get();
var sample03 = $('.sample03').get()
 alert(EndDate.length);

const countDownTimer = function (index, date) {
		var _vDate = new Date(date); // 전달 받은 일자
		var _second = 1000;
		var _minute = _second * 60;
		var _hour = _minute * 60;
		var _day = _hour * 24;
		var timer;

		function showRemaining() {
			var now = new Date();
			var distDt = _vDate - now;

			if (distDt < 0) {
				clearInterval(timer);
				sample03[index].textContent = '해당 이벤트가 종료 되었습니다!';
				return;
			}

			var days = Math.floor(distDt / _day);
			var hours = Math.floor((distDt % _day) / _hour);
			var minutes = Math.floor((distDt % _hour) / _minute);
			var seconds = Math.floor((distDt % _minute) / _second);

			sample03[index].textContent = date.toLocaleString() + "까지 : ";
			//alert(document.getElementById(id).textContent);
			sample03[index].textContent = days + '일 ';
			sample03[index].textContent += hours + '시간 ';
			sample03[index].textContent += minutes + '분 ';
			sample03[index].textContent += seconds + '초';
			//document.getElementById(id).textContent += hours + '시간 ';
			//document.getElementById(id).textContent += minutes + '분 ';
			//document.getElementById(id).textContent += seconds + '초';
		}

		timer = setInterval(showRemaining, 1000);
	}

	var dateObj = new Date();
	dateObj.setDate(dateObj.getDate() + 1);
	
	for(var i=0; i<EndDate.length; i++){
	countDownTimer(i, EndDate[i].value); // 2024년 4월 1일까지
	
	}
	  
	  
	  });