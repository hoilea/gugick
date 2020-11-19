<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxEx01.jsp</title>
<script type="text/javascript">
<!-- 	Asynchronous JavaScript and XML -->
	// XMLHttpRequest 객체
	var request = new XMLHttpRequest();   //이걸 호출했으면 사용할 타입이 필요합니다. 그래서 request사용
	console.log(request);
	console.dir(request);
		
	//search
	request.open('GET', 'data.html', false);
	
	//수행
	request.send();
	
	//확인
// 	alert(request.responseText);
	
	var txt = request.responseText;
	
	console.log(txt);
	
	document.write(txt);
	
	
	
</script>
</head>
<body>



</body>
</html>