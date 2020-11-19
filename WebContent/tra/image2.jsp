<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="image2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");

		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}

		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}

		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";

	}
</script>
</head>
<body>




	<div class="slideshow-container">

		<div class="mySlides fade2">

			<img class="main_slideImg" src="../image/giup.jpg">

			<div class="text">지렁지렁</div>

		</div>

		<div class="mySlides fade2">

			<img class="main_slideImg" src="../image/card.jpg">

			<div class="text">뱀뱀</div>

		</div>

		<div class="mySlides fade2">

			<img class="main_slideImg" src="../image/safe.png">

			<div class="text">용용</div>

		</div>

		<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
			onclick="plusSlides(1)">❯</a>

	</div>

	<br>

	<div style="text-align: center">

		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
			onclick="currentSlide(2)"></span> <span class="dot"
			onclick="currentSlide(3)"></span>

	</div>







</body>
</html>