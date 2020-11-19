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
		$('textarea').keyup(function() {
			//사용자가 입력한 글의 글자 수
			var input = $(this).val().length;
			
			//console.log(input);
			
			//남은 글자 수 계산
			//var cnt = 60 - input;
			//console.log(cnt);
			
			//화면에 출력
			$('span').html(input);
			
			//30자가 넘어가면 글자색이 노랑
			//50자가 넘어가면 글자색이 빨강
			//60자가 되면 경고창을 띄우고 경고창이 더이상 글을 작성할수없게함
			
			if(input==30){
				$('span').css('color', 'blue');
			}else if(input==50){
				$('span').css('color', 'red');
			}else if(input>=60){
				alert("더이상 작성이 불가함");
				//더이상 글이 써지지 않도록 수정
				$(this).attr("disabled", "disabled");
				
			}
			
			
			
			
		});//end of keyup
		
	
		
	});//function end
</script>
</head>
<body>
	<div>
		<p>한 마디씩 해보라구</p>
		<h2><span></span>/60자 제한</h2>
		<textarea name="" id="" rows="10" cols="40"></textarea>
		
	
	</div>

</body>
</html>