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
<title>사용자 정보</title>

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
<body>



<h2>사원 번호로 사용자 정보를 검색   
표로 출력               <br />
사원번호 검색은 : select - option tag
</h2>

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
      <h1>EMP Search</h1>   
         <input type="text" name="no" id=""/>
         <input type="submit" value="searching"/>
   
   </form>
   
   
   <table>
      <tr>
         <th>empno   </th>
         <th>ename   </th>
         <th>job     </th>
         <th>mgr     </th>
         <th>hiredate</th>
         <th>sal     </th>
         <th>comm    </th>
         <th>deptno  </th>
      
      
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
       
       sb.append("select * from emp ");
       sb.append("where empno = ? ");
       
       pstmt = conn.prepareStatement(sb.toString());
       pstmt.setInt(1, no);
       
       rs = pstmt.executeQuery();
       
       while(rs.next()){   /* 항상 처리할 데이터의 개수를 모른다고 가정하고 */
          
            int empno       = rs.getInt(1);
            String ename    = rs.getString(2);   
            String job      = rs.getString(3);   
            String mgr      = rs.getString(4);  
            String hiredate = rs.getString(5); 
            String sal      = rs.getString(6);    
            String comm     = rs.getString(7);   
            int deptno      = rs.getInt(8);  
     
      

          
      
      
      
   
      %>
      <tr>
         <td><%=empno %>   </td>
         <td><%=ename %>   </td>
         <td><%=job %>     </td>
         <td><%=mgr %>      </td>
         <td><%=hiredate %></td>
         <td><%=sal %>     </td>
         <td><%=comm %>    </td>
         <td><%=deptno %>  </td>
      
      
      </tr>
   
      <%
       }
      
       
       if(rs!=null)rs.close();
        if(pstmt!=null)pstmt.close();
        if(conn!=null)conn.close();
      %>
   </table>
</body>
</html>












