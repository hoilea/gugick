<%@page import="vo.FileuploadtestVO"%>
<%@page import="vo.FileuploadtestDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

/* 	String title = request.getParameter("title");
String writer = request.getParameter("writer");
String contents = request.getParameter("contnets");
String fileName = request.getParameter("fileName");


out.println(title);
out.println(writer);
out.println(contents);
out.println(fileName); */



	//upload directory
	String saveDir = request.getRealPath("upload");
	
	out.println(saveDir+"</br>");
	
	//첨부파일의 최대파일크기 지정 : 1kb - 1024bit
	int maxFilesize = 1024*1024*10;					//10MB
	
	// cos 사용 - 클래스 호출
	//new MultipartRequset(요청객체, 저장디렉토리, 최대파일크기, 인코딩타입, 동명파일처리규정 객체)
	MultipartRequest mr = 
		new MultipartRequest(request, saveDir, maxFilesize, "UTF-8", new DefaultFileRenamePolicy());
	
	//요청객체가 들어있는 multipart객체로 브라우저에게 요청해서 확인
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String contents = mr.getParameter("contents");
	//String fileName = mr.getParameter("fileName");
	//실제 이름을 밝혀주지 않는다
	
	String fileName = mr.getOriginalFileName("fileName");
	
	out.println(title+"</br>");
	out.println(writer+"</br>");
	out.println(contents+"</br>");
	out.println(fileName+"</br>");
	
	//DB에 접근
	FileuploadtestDAO dao = new FileuploadtestDAO();
	FileuploadtestVO vo = new FileuploadtestVO();
	
	vo.setTitle(title);
	vo.setWriter(writer);
	vo.setContents(contents);
	vo.setFilePath("../upload/"+fileName);
	
	dao.insertData(vo);
	
	%>
	
	<h2>제목 : <%=title %></h2>
	<h2>작성자 : <%=writer %></h2>
	<h2>내용 : <%=contents %></h2>
	
	
	<h2><a href="divView.jsp">파일정보 - admin</a></h2>			<!-- 관리자입장임 -->
	<h2><a href="fileView.jsp?writer=<%=writer%>">파일정보 - client</a></h2>					<!-- 사용자입장 -->
	
	
	
	<h2><a href="fileDownload.jsp?fileName=<%=fileName%>">파일다운로드</a></h2>					<!-- 사용자입장 -->
	

	
%>





</body>
</html>