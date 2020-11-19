<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>divView</title>
</head>
<body>
	<!-- 파일서버 관리자의 입장에서 확인 -->
	<%
		//파일서버에 생성한 upload 디렉토리의 실제 os 경로
		String path = request.getRealPath("upload");
		
		//파일 객체
		File f = new File(path);
		
		//경로가 디렉토리라면
		if(f.isDirectory()){
			//현재 디렉토리에 있는 파일을 출력(모두 출력)
			String[] flist = f.list();
			for(String list:flist){
				out.println("<h2>"+list+"</h2>");
				out.println("<img src='../upload/"+list+"'>");
			}//for end
		}//end of if
	
	%>

</body>
</html>