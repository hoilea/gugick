<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQueryEx04.jsp</title>
<style type="text/css">
	div {
		margin: 10px;
		padding: 10px;
		border: 2px solid black;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
<!-- 각 div를 클릭하면 console창에 h1, p 객체 정보가 출력되도록 해보세요 -->
		$("div").click(function(){
			//console.log("클릭");
			// var h1 = $("h1", this).text();
			var h1 = $(this).find("h1").text();
			
			var p = $("p", this).text();
			
			/* console.log(h1);
			console.log(p); */
			
			alert(h1 + " : " + p);
		});
	});
</script>
</head>
<body>
	<div>
		<h1>HELLO</h1>
		<p>안녕하세요</p>
	</div>
	<div>
		<h1>jQuery</h1>
		<p>제이쿼리</p>
	</div>
	<div>
		<h1>World</h1>
		<p>월드</p>
	</div>
	
</body>
</html>