<%@page import="dao.boardV2_DAO"%>
<%@page import="vo.boardVO"%>
<%@page import="dao.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	사용자에게 보여줄 페이지가 아니므로 굳이 HTML이 필요없음
	[writeOk.jsp]
 -->
 <%
 	// 바로 DBMS에 접근하지 말고 확인하는 습관을 가지세요!
 	// 브라우저 또는 콘솔에 먼저 출력
 	
 	String writer = request.getParameter("wr");
 	String title = request.getParameter("ti");
 	String contents = request.getParameter("ct");
 	
 	/*
 	out.println("writer : "+ writer);
 	out.println("title : "+ title);
 	out.println("contents : "+ contents);
 	*/
 	
 	// DB에 연결 후 write.jsp에서 전달해온 값을 저장
 	boardV2_DAO dao = new boardV2_DAO();
 	boardVO vo = new boardVO();
 	
 	vo.setWriter(writer);
 	vo.setTitle(title);
 	vo.setContents(contents);
 	
 	// 사용자의 IP를 얻어오기
 	String ip = request.getRemoteAddr();
 	vo.setIp(ip); 	
 	
 	dao.addData(vo);
 	
 	// DB에 저장이 잘 됐으면 게시판 메인으로 화면 이동
 	response.sendRedirect("list.jsp");
 
 
 %>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 