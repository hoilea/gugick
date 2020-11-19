<%@page import="java.net.URLEncoder"%>
<%@page import="vo.jsp_memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- loginOk -->

<% 
	//id, pw 정보를 받아와서 db에 접근하여 다음 현재 db에 회원이 있는지 여부를 체크
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	jsp_memberDAO dao = new jsp_memberDAO();
	
	boolean flog = dao.isExist(id, pw);
	
	
	// 회원이면 로그인 --> 쿠키로 돌려서 기능을 수행
	if(flog){
		/* out.println("로그인이 가능합니다");
		out.println(id+"어서오세여"); */
		
		String userId = URLEncoder.encode(id, "UTF-8");
		
		Cookie c = new Cookie("memberLogin", userId);
		c.setMaxAge(60*60*24);
		
		response.addCookie(c);
		response.sendRedirect("loginCk.jsp");
		
	}else{
		out.println("회원가입하세여");
	}

%>