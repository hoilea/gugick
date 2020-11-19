<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var request = new XMLHttpRequest();

	request.onreadystatechange = function(event){
		// readyState 는 0~4 까지 순서로 되어있고 4가 완료를 으미ㅣ
// 		alert(request.readyState);
		
		if(request.readyState==4){
			if(request.status==200){
				var txt =request.responseText;
				
				var d1 = document.getElementById("d1");
				d1.innerHTML =  "<h2>"+txt+"</h2>"
					
					//document.write(txt);
				
			}
		}
		
		
	};
	request.open("GET", "data.html", true);
	request.send();
	
</script>
</head>
<body>
<h2>AjaxEx</h2>
<div id="d1"></div>
</body>
</html>