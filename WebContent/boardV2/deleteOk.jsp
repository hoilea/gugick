<%@page import="dao.boardV2_DAO"%>
<%@page import="dao.boardV2_DAO"%>
<%@page import="dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [deleteOk.jsp] -->

<%
	String b = request.getParameter("bno");

	//out.println(b);
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		boardV2_DAO dao = new boardV2_DAO();
		dao.deleteData(bno);
		
		response.sendRedirect("list.jsp");		
	}else {
		response.sendRedirect("list.jsp");
	}

%>

