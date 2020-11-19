<%@page import="dao.boardV3_DAO"%>
<%@page import="dao.boardV2_DAO"%>
<%@page import="dao.boardDAO"%>
<%@page import="vo.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- [modifyOk.jsp] -->
<!-- DB에 접근해서 사용자가 수정한 내용을 저장 -->

<% 
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	String no = request.getParameter("bno");
	
	/*
	out.println("title : " + title);
	out.println("contents : " + contents);
	out.println("no : " + no);
	*/
	
	if(no != null) {
		int bno = Integer.parseInt(no);
		
		boardV3_DAO dao = new boardV3_DAO();
		boardVO vo = new boardVO();
		vo.setBno(bno);
		vo.setTitle(title);
		vo.setContents(contents);
		
		dao.modifyData(vo);
		
		response.sendRedirect("list.jsp");
	}else {
		
		response.sendRedirect("list.jsp");
	}


%>