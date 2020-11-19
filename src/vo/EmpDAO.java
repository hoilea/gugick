package vo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmpDAO {
   final String DRIVER = "oracle.jdbc.driver.OracleDriver";
   final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
   final String USER = "scott";
   final String PASSWORD = "tiger";

   StringBuffer sb = new StringBuffer();

   ResultSet rs = null;
   PreparedStatement ps = null;
   Connection conn = null;

   // 객체 호풀시 DB접속이 완료되게 하고 싶다.

   public EmpDAO() {
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
      } // 생성자 end
   }

      
      
      public EmpVO selectOne(int empno) {
         
         sb.append("select * from emp " );
         sb.append("where empno = ? ");
         
         EmpVO vo = null;
         
         try {
            ps = conn.prepareStatement(sb.toString());
            ps.setInt(1, empno);

            rs = ps.executeQuery();
            rs.next();

            String ename = rs.getString(2);
            String job = rs.getString(3);
            int mgr = rs.getInt(4);
            String hiredate =rs.getString(5);
            String sal = rs.getString(6);
            String comm =rs.getString(7);
            int deptno = rs.getInt(8);

            vo = new EmpVO(empno, ename, job, mgr, hiredate, sal, comm, empno);

         } catch (SQLException e) {
            e.printStackTrace();
         }

         return vo;
      }
      
      public int insertOne(EmpVO vo) {
         sb.append("Insert into emp " );
         sb.append("values(?,?,?,?,?,?,?,?) ");
         
         int result =-1;
         
         try {
            ps = conn.prepareStatement(sb.toString());
            ps.setInt(1, vo.getEmpno());
            ps.setString(2, vo.getEname());
            ps.setString(3, vo.getJob());
            ps.setInt(4, vo.getMgr());
            ps.setString(5, vo.getHiredate());
            ps.setString(6, vo.getSal());
            ps.setString(7, vo.getComm());
            ps.setInt(8, vo.getDeptno());
            

            ps.executeQuery();
         } catch (SQLException e) {
            e.printStackTrace();
         }
         return result;

       }//insertOne() end
      
      
      
      public void updateOne(EmpVO vo) {
         sb.setLength(0);
         sb.append("update emp ");
         sb.append("set ename=?, job=?, mgr=?, hiredate=?,sal=?,comm=?,deptno=? ");
         sb.append("where empno=? ");
         try {
             ps=conn.prepareStatement(sb.toString());
             //물음표의 값을 할당
               
               ps.setString(1, vo.getEname());
               ps.setString(2, vo.getJob());
               ps.setInt(3, vo.getMgr());
               ps.setString(4, vo.getHiredate());
               ps.setString(5, vo.getSal());
               ps.setString(6, vo.getComm());
               ps.setInt(7, vo.getDeptno());
               ps.setInt(8, vo.getEmpno());
             
             ps.executeUpdate();
             
             System.out.println("수정~");
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }//update end
         
      public void deleteOne(int empno) {
         sb.setLength(0);
         sb.append("delete emp ");
         sb.append("where empno=? ");
         try {
            ps = conn.prepareStatement(sb.toString());
            ps.setInt(1, empno);
            
            ps.executeQuery();
            System.out.println("지웟다~");
         } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
         }
      }
      
      public ArrayList selectAll() {
            
            ArrayList<EmpVO> list = new ArrayList<EmpVO>();
            
            sb.setLength(0);
            sb.append("select * from emp");
            
            try {
            ps = conn.prepareStatement(sb.toString());
            //실행
            rs =ps.executeQuery();
            //레코드 별로 로직처리
            while(rs.next()) {
               int empno = rs.getInt(1);
               String ename = rs.getString(2);
               String job = rs.getString(3);
               int mgr = rs.getInt(4);
               String hiredate =rs.getString(5);
               String sal = rs.getString(6);
               String comm =rs.getString(7);
               int deptno = rs.getInt(8);
               
               //vo 객체에 전달
            EmpVO vo = new EmpVO();
               vo.setEmpno(empno);
               vo.setEname(ename);
               vo.setJob(job);
               vo.setMgr(mgr);
               vo.setHiredate(hiredate);
               vo.setSal(sal);
               vo.setComm(comm);
               vo.setDeptno(deptno);
               
               
               EmpVO vo1= new EmpVO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
               // Collect에 담기
               list.add(vo1);
            }
            System.out.println("전체선택~");
         } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
         }
            
            
            return list;

         }
        public void close() {
            if(rs!=null)
               try {
               rs.close();
               if(ps!=null) ps.close();
               if(conn!=null) conn.close();
            } catch (SQLException e) {
               // TODO: handle exception
               e.printStackTrace();
            }
         }
      
      
      
      
      
   
}