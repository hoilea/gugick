package d20200225;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeptMain {
   public static void main(String[] args) {
      // DB연결  순서 
      
      //0.변수 설정
      String driver = "oracle.jdbc.driver.OracleDriver";
      String url = "jdbc:oracle:thin:@localhost:1521:XE";
      String user = "scott";
      String password = "tiger";
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs =null;
      
      StringBuffer sb = new StringBuffer();
      
      
      //1. 드라이버 로딩
      try {
         Class.forName(driver);
         
      //2. connection 객체 생성
         conn = DriverManager.getConnection(url, user, password);
         
         System.out.println("conn :"+ conn);
         
         
      } catch (ClassNotFoundException e) {
      
         e.printStackTrace();
         System.out.println("Connection 성공");
      } catch (SQLException e) {
         e.printStackTrace();
         System.out.println("Connection 실패");
      }
       
      
      
      //3. sql문장
      sb.append("select * from dept " );
      
      //4. Statement(문장) 객체
      try {
         pstmt = conn.prepareStatement(sb.toString());
      //5. 실행( ==> result 객체 return)
         rs = pstmt.executeQuery();
      //6. 각 레코드별로 로직처리
         while(rs.next()) {
            int deptno = rs.getInt(1);
            String dname = rs.getString(2);
            String loc = rs.getString(3);
            System.out.println(deptno + "\t" + dname + "\t"+ loc);
         }
         
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      finally {
         if(rs!=null) {
            try {
               rs.close();
               if(pstmt!=null)pstmt.close();
               if(conn!=null)conn.close();
            }catch (SQLException e) {
               e.printStackTrace();
            }
         }
      }
      
      
      
   }

}