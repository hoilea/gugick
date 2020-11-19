<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#btn1').click(function() {
			//right버튼을 클릭하면 오른쪽으로 800이동
			
			//$('img').css('marginLeft', 800);
			
			//맵방식 JSON
			//$("img").css({'margin-left' : '800px'});
			
			//animate(에니메이션 효과 지정, 시간지정);
			$("img").animate({"margin-left" : "1000px"}, 1000);
			
			
		});//btn click end
		
		$('#btn2').click(function() {
			//down버튼 클릭 시 아래로 200px이동
			$("img").animate({marginTop : 200}, 1000);
			
		});
		
		$('#btn3').click(function() {
			//현재 이미지의 너비와 높이 구하기
			var w = parseInt($("img").css("width"))*2;
			var h = $("img").height()*2;
			
			$("img").animate({width : w, height : h}, 1000);
			
		});
		
		//div클릭 하면 100씩 증가하도록 만들기
		$("div").click(function() {
		
			/* var w = $("div").width();
			var h = $("div").height();
			
			var ww = w+100;
			var hh = h+100;
			
			$("div").animate({width : ww, height : hh}, 1000); */
			
			$(this).animate({
				width :'+=100',
				height : '+=100'
			}, 'fast');
			
		});
		
		
		
	});
</script>
<style>
	div{
		width: 100px;
		height: 100px;
		background-color:  red;
	}
</style>
</head>
<body>
	<!-- 이미지에 효과주기 -->
	<input type="button" value="right" id="btn1" />
	<input type="button" value="down" id="btn2" />
	
	<input type="button" value="zoom *2" id="btn3" />
	
	
	<br />
	<br />
	<br />
	
	<img src="../images/4.jpg" alt="nagasaki" />
	<br /><br /><br />
	
	<div>
		
	</div>
	

</body>
</html>