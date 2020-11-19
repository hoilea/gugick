<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#div2{
		width: 300px;
		height: 300px;
		background: red;
		padding: 50px;
	}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	/* $(document).ready(function() {	}); */
	//jquery 버젼업이 되면 deprecated 되는 것 확인해 볼것 ex)$(document).ready
	
	$(function(){
		$('h1').click(function() {
			//console.log("click")
			
			var length = $('h1').length;
			
			var html = $('h1').html();
			
			/* console.log(length);
			console.log(html); */
			
			//javacript는 innerHTML 효과
			$('#div').append('<h1>'+length+' : '+html+'</h1>');
			
			
		});//h1 click end
		
		//마우스가 오버되면 빨간 div 아래에 코로나 조심하세요 출력
		$('#div2').on('mouseover', function() {
			$('body').append("<h1>코로나 조심하세요1</h1>");
		}).mouseenter(function() {
			$('body').append("<h1>코로나 조심하세요2</h1>");
		});
		
		
		
		
	});//function end
	
	
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="div">
		<h1>오늘은 화요일</h1>
	</div>
	
	<div id="div2">
		
	</div>

</body>
</html>