<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multiUpload.jsp</title>
</head>
<body>
	<form action="multiUploadOk.jsp" method="post" enctype="multipart/form-data">
		<div>
			<input type="file" name="multi" id="multiple" multiple="multiple" /><br>
<!-- 			<input type="file" name="mulit2" id="" /> -->
			<input type="submit" value="다중업로드" />
		</div>
	
	
	</form>

</body>
</html>