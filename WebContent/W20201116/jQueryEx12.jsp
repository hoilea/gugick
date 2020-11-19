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
		//각 버튼을 누르면 기능 수행
		$('input[value="숨기기"]').on('click', function() {
			$('#box1').hide(3000);	//함수 안에 밀리세컨드 단위로 시간지정
		});
		
		$('input[value="보이기"]').click(function() {
			$('#box1').show(3000);
		});
		
		$('input[value="번갈아 수행"]').click(function() {
			$('#box1').toggle(3000);
		});
		
		//점점 사라지기 점점 보이기 구현
		$('input[value="점점 사라지기"]').click(function() {
			$('#box1').fadeOut(3000);
		});
		
		$('input[value="점점 보이기"]').click(function() {
			$('#box1').fadeIn(3000);
		});
		
		$('input[value="이어서 효과 주기"]').click(function() {
			//하나의 효과가 끝나고 이어서 함수실행이 가능
			//ex) 다른 페이지로 이동
			$('#box1').slideToggle(1000, function(){
				alert("작업완료");
			});
		});
		
		
		
	});
</script>
</head>
<body>
	<input type="button" value="숨기기" />
	<input type="button" value="보이기" />
	<input type="button" value="번갈아 수행" />
	<input type="button" value="점점 사라지기" />
	<input type="button" value="점점 보이기" />
	<input type="button" value="이어서 효과 주기" />
	
	<div id="box1" style="font-size: 20px">
		<br />
		오늘은 화요일 <br /><br />
		내일은 수요일 <br /><br />
		곧 점심시간 <br /><br />
		뭐먹냐 <br /><br />
		모레쯤 조편성함 <br /><br />
		hljfdsa jknafdsfdsa d <br /><br />
		;jadfhgl;kjfhgalkjakj <br /><br />
	</div>

</body>
</html>