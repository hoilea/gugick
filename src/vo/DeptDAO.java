package vo;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.DeptVO;

// DAO (Data Access Object) : DB에 쉽게 접근하기 위한 객체

public class DeptDAO {
   final String DRIVER = "oracle.jdbc.driver.OracleDriver";
   final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
   final String USER = "scott";
   final String PASSWORD = "tiger";

   StringBuffer sb = new StringBuffer();

   ResultSet rs = null;
   PreparedStatement ps = null;
   Connection conn = null;

   // 객체 호출시 DB 접속이 완료되게 하고 싶음

   public DeptDAO() {
      try {
         Class.forName(DRIVER);

         conn = DriverManager.getConnection(URL, USER, PASSWORD);

      } catch (ClassNotFoundException e) {
         // TODO: handle exception
         e.printStackTrace();
         System.out.println("드라이버 로딩 실패");
      } catch (SQLException e) {
         e.printStackTrace();
         System.out.println("DB 연결 실패");
      }

   }// 생성사 end

   public DeptVO selectOne(int deptno) {

      sb.append("select * from dept ");
      sb.append("where deptno = ? ");

      DeptVO vo = null;

      try {
         ps = conn.prepareStatement(sb.toString());
         ps.setInt(1, deptno);

         rs = ps.executeQuery();
         rs.next();

         String dname = rs.getString(2);
         String loc = rs.getString(3);

         vo = new DeptVO(deptno, dname, loc);

      } catch (SQLException e) {
         e.printStackTrace();
      }

      return vo;
   }

   public int insertOneI(DeptVO vo) {
      sb.append("Insert into dept ");
      sb.append("values(?, ?, ? ) ");
      int result = -1;
      try {
         ps = conn.prepareStatement(sb.toString());
         ps.setInt(1, vo.getDeptno());
         ps.setString(2, vo.getDname());
         ps.setString(3, vo.getLoc());

         ps.executeQuery();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return result;

   }// insertOne() end

   // 데이터 수정

   public void updateOne(DeptVO vo) {
      sb.setLength(0);
      sb.append("update dept " );
      sb.append("set dname =?, loc=? ");
      sb.append("where deptno =? ");
      
      try {
       ps= conn.prepareStatement(sb.toString());
       //물음표의 값을 할당
       ps.setString(1, vo.getDname());
       ps.setString(2, vo.getLoc());
       ps.setInt(3, vo.getDeptno());
       
       ps.executeUpdate();
   } catch (SQLException e) {
      // TODO: handle exception
      e.printStackTrace();
   }//update end
     
 
   
   
//   public void deleteOne(int deptno) {
//      sb.setLength(0);
//      sb.append("delete dept " );
//      sb.append("where deptno =? ");
//      
//      try {
//      ps = conn.prepareStatement(sb.toString());
//      ps.setInt(1, deptno);
//      
//      ps.executeUpdate();
//   } catch (SQLException e) {
//      // TODO: handle exception
//      e.printStackTrace();
//   }
//   }//delete end
      
      
      
      
//   
   }
//   public ArrayList selectAll() {
//      
//      ArrayList<DeptVO> list = new ArrayList<DeptVO>();
//      
//      sb.setLength(0);
//      sb.append("select * from dept");
//      
//      try {
//         ps = conn.prepareStatement(sb.toString());
//         //실행
//         rs =ps.executeQuery();
//         //레코드 별로 로직처리
//         while(rs.next()) {
//            int deptno = rs.getInt(1);
//            String dname = rs.getString(2);
//            String loc = rs.getString(3);
//            
//            //vo 객체에 전달
//            DeptVO vo = new DeptVO();
//            vo.setDeptno(deptno);
//            vo.setDname(dname);
//            vo.setLoc(loc);
//            
//            DeptVO vo1= new DeptVO(deptno, dname, loc);
//            // Collect에 담기
//            list.add(vo1);
//         }
//      } catch (SQLException e) {
//         // TODO: handle exception
//         e.printStackTrace();
//      }
//      
//      
//      return list;
//      // selectALL end
// 
//   
//   
//   
//   
//   
//   
//   }
}

   
   

   