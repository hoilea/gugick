package vo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class jsp_memberDAO {
   //드라이버 설정 작업
   final String DRIVER = "oracle.jdbc.driver.OracleDriver";
   final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
   final String USER = "scott";
   final String PASSWORD = "tiger";
   
   StringBuffer sb = new StringBuffer();
   ResultSet rs = null;
   PreparedStatement ps = null;
   Connection conn = null;
   
   //생성자 호출시 db 접속이 완료되게 처리 
   public jsp_memberDAO() {
      try {
         Class.forName(DRIVER);
         conn = DriverManager.getConnection(URL, USER, PASSWORD);
         System.out.println("conn : "+ conn);
         }catch(ClassNotFoundException cnfe) {
            cnfe.printStackTrace();
         }catch (SQLException e) {
         // TODO: handle exception
            e.printStackTrace();
      }
   }
   public void addData(jsp_memberVO vo) {
      sb.setLength(0); // 스트링 버퍼를 비우는줄 ??
      sb.append("insert into JSP_MEMBER " );
      sb.append("values (JSP_MEMBER_MEMNO_SEQ.nextval, ?, ?, ?, to_date(?), ?, sysdate, ?  ) " );
      
      try {
         ps=conn.prepareStatement(sb.toString());
         ps.setString(1, vo.getId());
         ps.setString(2, vo.getPw());
         ps.setString(3, vo.getName());
         ps.setString(4, vo.getBirth());
         ps.setString(5, vo.getMp());
         ps.setString(6, vo.getEmail());
         
         ps.executeUpdate();
         
      } catch (Exception e) {
         // TODO: handle exception
         e.printStackTrace();
      }
   }// add Data () end
   
   //전체조회
   public ArrayList<jsp_memberVO> getAllData(){
	      
	      ArrayList<jsp_memberVO> list = new ArrayList<jsp_memberVO>();
	      
	      sb.setLength(0);
	      sb.append("select * from jsp_member");
	      
	      try {
	         ps= conn.prepareStatement(sb.toString());
	         rs=ps.executeQuery();
	         
	         while(rs.next()) {
	            String id = rs.getString("id");
	            String pw = rs.getString("pw");
	            String name = rs.getString("name");
	            String birth = rs.getString("birth");
	            String mp = rs.getString("mp");
	            String regdate= rs.getString("regdate");
	            String email = rs.getString("email");
	               
	            int memno = rs.getInt("memno");
	            jsp_memberVO vo = new jsp_memberVO(id, pw, name, birth, mp, email);
	            list.add(vo);
	            
	         }
	      } catch (SQLException e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      }
	      return list;
	      
	   }//end select all
   
   //============================================================================
   //존재하는 회원인지 여부를 확인하는 메소드 (id , pw)
   public boolean isExist(String id, String pw) {
	   sb.setLength(0);
	   sb.append("select * from member ");
	   sb.append("where id = ? and pw = ? ");
	   
	   boolean isOk = false;
	   
	   try {
		ps = conn.prepareStatement(sb.toString());
		ps.setString(1, id);
		ps.setString(2, pw);
		
		rs = ps.executeQuery();
		
		isOk = rs.next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return isOk;
	   
   }//end of isExist
	   
   	//id로만 존재하는 회원인지 여부를 파악하는 메소드
   
   public boolean isExistById(String id) {
	   sb.setLength(0);
	   sb.append("select * from jsp_member ");
	   sb.append("where id = ? ");
	   
	   boolean flag = false;
	   
	   try {
		ps = conn.prepareStatement(sb.toString());
		ps.setString(1, id);
		
		rs = ps.executeQuery();
		
		flag = rs.next();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return flag;
   }///end isExistByid
   
   
   
	}//end mains
   
      
  