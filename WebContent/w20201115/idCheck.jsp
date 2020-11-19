<%@page import="vo.jsp_memberDAO"%>
<%@page import="vo.jsp_memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// id 파라미터 값을 받기 + encode 처리
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	
	// DBMS에 연결해서 해성 id가 존재하면 true, 존재하지 않은 false return
	jsp_memberDAO dao  = new jsp_memberDAO();
	boolean flag = dao.isExistById(id);
	
	out.println(flag);

%>