package vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.ReBoardVO;

public class ReBoardDAO {
   StringBuffer sb = new StringBuffer();
   ResultSet rs = null;
   PreparedStatement pstmt = null;
   Connection conn = null;
   
   public ReBoardDAO() {
      conn = OracleXEConnection.getInstance().getConnection();
   }
   
   
   // 댓글 입력 메소드 
   public void insertReply(ReBoardVO vo) {
      
      sb.setLength(0);
      sb.append("insert into reboard ");
      sb.append("values (REBOARD_RENUM_SEQ.nextval, ? , ? , sysdate, ? ) " );
      
      try {
         pstmt = conn.prepareStatement(sb.toString());
         pstmt.setString(1, vo.getId());
         pstmt.setString(2, vo.getContents());
         pstmt.setInt(3, vo.getRef());
         
         pstmt.executeUpdate();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
   }// 댓글 조회 메소드 -전체조회(원글번호별)
   public ArrayList<ReBoardVO> getAllReply(int bno) {
      ArrayList<ReBoardVO> list = new ArrayList<ReBoardVO>();
      
      sb.setLength(0);
      sb.append("select * from reboard " );
      sb.append("where ref = ? " );
      sb.append("order by renum desc " );
      
      try {
         pstmt = conn.prepareStatement(sb.toString());
         pstmt.setInt(1, bno);
         
         rs = pstmt.executeQuery();
         
         while(rs.next()) {
            ReBoardVO vo 
            = new ReBoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            
            list.add(vo);
            
         }
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      return list;
   
      
   }//getAllReply() end
   
   
}



















