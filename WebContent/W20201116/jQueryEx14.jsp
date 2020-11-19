<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.mainMenu{
		float: left;
		width: 320px;
		list-style-type: none;
	}
	
	li.mainMenu ul {
		margin: 0;
		display: block;
		list-style-type: none;
		padding: 0;
	}
	
	li.mainMenu a {
		width: 300px;
		display: block;
		background-color: blue;
		color: white;
		text-decoration: none;
		padding: 10px;
		border-bottom: 1px solid #fff;
	}
	
	
   ul.dropdownMenu li.hover{
   	background-color : gray;
   
   }
	
	
	
	
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('li.mainMenu ul').hide();
		
		
		$('li.mainMenu').hover(function() {
			//마우스 올리면 실행 될 부분
			//console.log("mouse over");
			
			//내 카테고리의 자식요소를 호추
			$('ul', this).stop().slideDown(500);
			
		}, function() {
			//마우스 내리면 실행 될 부분
			//console.log("mouse out");
			$('ul', this).stop().slideUp(500);
		});
		
		
		
	});
</script>
</head>
<body>
	<!-- 드롭다운 메뉴 만들기 -->
	
	<ul id="dropdownMenu">
		<li class="mainMenu">
			<a href="">도서</a>
			<ul>
				<li><a href="">IT</a></li>
				<li><a href="">소설</a></li>
				<li><a href="">문학</a></li>
			</ul>
		</li>
		<li class="mainMenu">
			<a href="">명품</a>
			<ul>
				<li><a href="">구찌</a></li>
				<li><a href="">샤넬</a></li>
				<li><a href="">옾화</a></li>
			</ul>
		</li>
	</ul>
	
	

</body>
</html>