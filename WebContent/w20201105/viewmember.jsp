<%@page import="vo.jsp_memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.jsp_memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   table ,tr ,td ,th {
   border :1px solid black;
   border-collapse: collapse;
   }
</style>
</head>
<body>
<!--    관리자라고 가정하고 회원정보가 궁급합니다. 전체 회원정보를 ㅍ로 출력해보세요, -->

   <table>
      <tr>
         <th>ID</th>
         <th>NAME</th>
         <th>BIRTH</th>
         <th>MP</th>
         <th>REGDATE</th>
         <th>MEMNO</th>
         <th>EMAIL</th>
      </tr>
      <%
      jsp_memberDAO dao = new jsp_memberDAO();
      
      ArrayList<jsp_memberVO> list = dao.getAllData();
      
      for(jsp_memberVO vo : list){
      
      
      
      
      
      %>
      
      <tr>
         <td><%=vo.getMemno() %></td>
         <td><%=vo.getId() %></td>
         <td><%=vo.getName() %></td>
         <td><%=vo.getBirth() %></td>
         <td><%=vo.getMp() %></td>
         <td><%=vo.getRegdate() %></td>
         <td><%=vo.getEmail() %></td>
      </tr>
      <%
      }
      %>
   </table>

</body>
</html>