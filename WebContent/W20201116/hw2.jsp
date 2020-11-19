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
		$("div").hover(function() {
			$(this).animate({"margin-left" : "1000px"}, 1000);
			$(this).stop().animate({"margin-left" : "0px"}, 1000);

		});
	});
</script>
<style>
	div{
		width: 100px;
		height: 50px;
		background-color: yellow;
	}
</style>
</head>
<body>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
		<div></div>
</body>
</html>