<%@page import="dao.boardDAO"%>
<%@page import="vo.boardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- deleteOk -->
    
    
   <%
         String b = request.getParameter("bno");
   
   if(b!=null){
      int bno = Integer.parseInt(b);
      
      boardDAO dao = new boardDAO();
      dao.deleteData(bno);
      
      response.sendRedirect("list.jsp");
   }else{
      response.sendRedirect("list.jsp");
   }
   
   
   
   %>