<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- <%
		MemberBean mb = new MemberBean();
		
		mb.setId(request.getParameter("id"));
		mb.setPw(request.getParameter("pw"));
	%> --%>
	
	<%-- <%
		Object obj = session.getAttribute("vo");
		
		if(obj!=null){
			//out.println(obj);
			MemberBean mb = (MemberBean)obj;
			
			out.println(mb.getId());
			out.println(mb.getPw());
		}else{
			MemberBean mb = new MemberBean();
			
			/* mb.setId(request.getParameter("id"));
			mb.setPw(request.getParameter("pw"));
 			*/			
		}
		
	%> --%>
	
	<jsp:useBean id="vo" class="bean.MemberBean" scope="session"></jsp:useBean>
	<!-- loginOk에서 scope를 session으로 설정해서 보냈으므러
		 받는 족도 session이여야함 -->
	

	<%-- 	<h2><%=mb.getId() %> 님 환영합니다.</h2>
	<h2><%=mb.getPw() %> 가 패스워드입니다</h2>
 	--%>
 	
 	<h1>Id : <a href="myPage.jsp"><jsp:getProperty property="id" name="vo"/></a></h1>
 	<h1>Pw : <jsp:getProperty property="pw" name="vo"/></h1>
 	
 	
 	
</body>
</html>