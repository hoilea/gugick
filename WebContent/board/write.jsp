<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#container{
	width : 300px;
	margin : 0 auto;
	border : 1px solid black;
	}
	#top {
	text-align: center;
	border-bottom: 1px solid black;
	}
	#context{
	margin-left : 10px;
	
	
	}
	#button{
	margin-left: 20px;
	
	}
	#writer, #title{
	margin-left: 10px;
	}
</style>
</head>
<body>
	<form action="writeOk.jsp" name="frm">
		<div id="container">
			<div id="top">
				<p>
					<h3>하고 싶은 이야기가 있으십니까</h3>
				</p>
			</div>
			<div id="writer">
				<p><span>WRITER : </span>
				<input type="text" name="wr" id="wr" /></p>
			</div>
				<div id="title">
					<p><span>TITLE : &nbsp;</span>
					<input type="text" name="ti" id="ti" /></p>
				</div>
				<div id="contents">
					<p><textarea name="ct" id="ct" cols="35" rows="20"></textarea></p>
				</div>
				<div id="button">
					<input type="button" value="목록보기" />
					<input type="submit" value="작성하기" />
					<input type="reset" value="다시쓰기" />
				</div>
		</div>
	
	</form>

</body>
</html>