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
		$('img, br').hide();
		
		$('input[value="클릭쓰"]').click(function() {
			//하나의 효과가 끝나고 이어서 함수실행이 가능
			//ex) 다른 페이지로 이동
			$('img, br').show(1000, function(){
				location.href = "main.jsp";
			});
		});
		
		
	});
</script>
</head>
<body>
			<!-- 
				1. 버튼 클릭 시 브라우저에 img 출력 
				100px정도 오른쪽에서 점점보이게 출력
				
				2. 사진이 전부 보이면 main.jsp로 이동
				
				3. main.jsp에서는 어서오세요 출력
			-->
			
			<div>
			<input type="button" value="클릭쓰" />
				<div id="box1"><img src="../images/GUCCI1.png" alt="그림"/></div>
			</div>



</body>
</html>