<%@page import="vo.jsp_memberVO"%>
<%@page import="vo.jsp_memberDAO"%>
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
	 String id = request.getParameter("id");
	 String pw = request.getParameter("pw");
	 String name = request.getParameter("name");
	 String birth = request.getParameter("birth");
	 String mp1 = request.getParameter("mp1");
	 String mp2 = request.getParameter("mp2");
	 String email = request.getParameter("email");
	 
	// out.println(id+""+pw+""+name+""+birth+""+mp1+""+mp2+""+email);
	 
	 //회원가입 수행   => 데이터 베이스 입력	
		jsp_memberDAO dao = new jsp_memberDAO();
	 
	  	jsp_memberVO vo = new jsp_memberVO(id,pw,name,birth,"010"+mp1+"-"+mp2,email); 
	  			
	  	
	  	dao.addData(vo);
	  	

%>
		<h1><%=name %>님 가입 축하드립니다</h1>
		
		<h6>호갱님의  소중한 개인정보는 잘 쓰겠습니다.</h6>

</body>
</html>