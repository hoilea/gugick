<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){   
	   $('img').css({
	         "width" : "150px";
	         "height": "300px";
	         "margin": "20px"; 
	   });
	   $('p').css("margin-left", "20px");
	   $('li').css("float", "left");
	   $('ul').css("list-style", "none");
	});



</script>
<title>jQueryEx11</title>
</head>
<body>
	<!-- jQuery = css + img -->
	
	<h1>라면 소개</h1>
	<ul>
		<li>
			<div>
				<img src="../images/0.jpg" alt="라면1" />
				<p>라면쓰</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/1.jpg" alt="라면2" />
				<p>라면땅</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/2.jpg" alt="라면3" />
				<p>라면컵</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/3.jpg" alt="라면4" />
				<p>라면힣</p>
			</div>
		</li>
		<li>
			<div>
				<img src="../images/4.jpg" alt="라면5" />
				<p>라면욤</p>
			</div>
		</li>
	</ul>
	
	

</body>
</html>