<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>   dept Select One</title>
<style type="text/css">
   table{
      width : 600px;
      margin: 0 auto;/* 가운데 */
      
   }
   table, tr, th, td{
      bodrer:1px solid black;
      border-collspse: collapse;
      text-align;
   }
   th{
      background-color:#aaa;
      
   }



</style>


</head>
<body><!--DB에 연결해서 (사용자가) 원하는 데이터만 가져와 표로 출력 -->

<!-- jsp 우선순위
 스크립틀릿 – 스크립트 – html 순
 500에러가 터지는 이유는 가장먼저 스크립틀릿단을 로딩하는데, 처음부터 null값이러
 터지는거임(바로 밑 단 코딩)
   -->
     <%
           String n = request.getParameter("no");
      // 밑의  ~ pstmt.setint(1, no); 에 의해 no값을 채우기 위해서.
      // java단에서는 int이고, sql에서의 부서번호는 number형태라서
      // 서로 동일 조건으로 맞추어주어야 함
         //int no = Integer.parseInt(n); 500(null)방지를 위해 코드 사용불가
      
      /*  er500 방지로 값 지정
          null대신에 임의의 값으로 인해, nullpointexcetption이 안터짐*/
         int no = -1;
         if(n==null || n.equals("")){
            no = 0;
         }else {
            no = Integer.parseInt(n);
         }
         
         
         
      
     
     
     
     %>

   <hr />
   <form action="#">
      <h1>Dept Search</h1>
         <input type="text" name="no" id=""/>
         <input type="submit" value="검색">
         <!-- 데이터 전송을 위한 submit처리  -->
   </form> 
   
   
   <table>
      <tr>
         <th>부서번호</th>
         <th>부서이름</th>
         <th>부서위치</th>   
         
      </tr>
      
      <%
      
      
      
      String driver   = "oracle.jdbc.driver.OracleDriver";
       String url      = "jdbc:oracle:thin:@localhost:1521:XE";
       String user     = "scott";
       String password = "tiger";
      
       StringBuffer sb = new StringBuffer();
       ResultSet rs=null;
       PreparedStatement pstmt=null;
       Connection conn=null;
       
       try{
          Class.forName(driver);
          
          conn = DriverManager.getConnection(url, user, password);
          System.out.println("conn = " + conn );
       }catch(ClassNotFoundException cnfe){
          System.out.println("로딩 실패");
          cnfe.getStackTrace();
          
       }catch(SQLException se){
          se.getStackTrace();
          System.out.println("DB 연결 실패");
       }
       
       sb.append("select * from dept ");
       sb.append("where deptno = ? ");
       
       pstmt = conn.prepareStatement(sb.toString());
       pstmt.setInt(1, no);
       
       rs = pstmt.executeQuery();
       
       while(rs.next()){   /* 항상 처리할 데이터의 개수를 모른다고 가정하고 */
          int deptno   = rs.getInt(1);
          String dname = rs.getString(2);
            String loc   = rs.getString(3);
            
            System.out.println(deptno + "\t" + dname + "\t"+ loc);

          
      
      %>
      
      <tr>
         <td> <%=deptno %></td>
         <td> <%=dname %></td>
         <td> <%=loc %></td>
      </tr>
      <%
      
       }      /* 여기까지 영향을 주기위해, 여기서 중괄호 처리  */
      
       
       if(rs!=null)rs.close();
        if(pstmt!=null)pstmt.close();
        if(conn!=null)conn.close();
           
         
      %>
   </table>
</body>
</html>