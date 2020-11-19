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
		
		var h = $("div").height()*2;
		var w = $("div").width()*2;
	
		

		
		$('div').click(function() {
			$(this).animate({"margin-left" : "+=100px"}, 500);
			$(this).animate({
				width :'+=100'
			}, 500);
			$(this).animate({marginTop : "+=100px"}, 500);
			$(this).animate({
				height :'+=100'
			}, 500);
			
		});//btn click end
		
		
	});
	
</script>
<style>
	div{
		width: 100px;
		height: 100px;
		background-color: red;
	}
</style>
</head>
<body>

<div></div>

</body>
</html>