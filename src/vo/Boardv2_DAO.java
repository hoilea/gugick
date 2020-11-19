package vo;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.Goot7EXConnection;
import connection.OracleXEConnection;
import vo.BoardVOrealnamevo;

public class Boardv2_DAO {
   StringBuffer sb = new StringBuffer();
   ResultSet rs = null;
   PreparedStatement pstmt = null;
   Connection conn = null;
   
   public Boardv2_DAO() {
      conn = OracleXEConnection.getInstance().getConnection();
   }
   
   
   //게시글 입력 메소드 - addDate()
   public void addData(BoardVOrealnamevo vo) {
      sb.setLength(0);
      sb.append("insert into board ");
      sb.append("values (board_bno_seq.nextval,  ?, ?, ?, sysdate, ?, 0, 0)  ");
      
      try {
         pstmt = conn.prepareStatement(sb.toString());
         pstmt.setString(1, vo.getTitle());
         pstmt.setString(2, vo.getWriter());
         pstmt.setString(3, vo.getContents());
         pstmt.setString(4, vo.getIp());
         
         
         /*
          * pstmt.setInt(5, vo.getStatus()); 
          * pstmt.setInt(6, vo.getHits());
          */
         
         pstmt.executeUpdate();
         
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
   }// addData() end
   
   //=================================================================================
   
   //전체 게시글 조회 - getAllData() --페이징 처리를 위해 시작번호와 끝번호가 필요
   public ArrayList<BoardVOrealnamevo> getAllDate(int startNO, int endNO){
	   ArrayList<BoardVOrealnamevo> list = new ArrayList<BoardVOrealnamevo>();
	   sb.setLength(0);
	   sb.append("SELECT *  ");
	   sb.append("FROM (SELECT ROWNUM RN, BNO, TITLE, WRITE, CONTENTS, IP, HITS, REGDATE, STATUS ");
	   sb.append("      FROM (SELECT * FROM BOARD ");
	   sb.append("      ORDER BY BNO DESC) ");
	   sb.append("      WHERE ROWNUM<=?) ");
	   sb.append("WHERE RN >= ? ");
	   
	   
	   
	   try {
		pstmt = conn.prepareStatement(sb.toString());
		pstmt.setInt(1, endNO);
		pstmt.setInt(2, startNO);
		
		
		rs = pstmt.executeQuery();
			/* rs.next(); */
		
		while(rs.next()) {
			int bno = rs.getInt("bno");
			 String title = rs.getString("title");
	         String writer = rs.getString("write");
	         String contents = rs.getString("contents");
	         String regdate = rs.getString("regdate");
	         String ip = rs.getString("ip");
	         int status = rs.getInt("status");
	         int hits = rs.getInt("hits");
	         
	         BoardVOrealnamevo vo = new BoardVOrealnamevo(bno, title, writer, contents, regdate, ip, status, hits);
	         
	         list.add(vo);
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   
	   
	   return list;
   }//end of getAllData(int startNo, int endNO)
  
   
   
   //========================================================================
   
   
   //총 게시물 파악 메소드
   public int getTotalCount() {
	   sb.setLength(0);
	   sb.append("select count(*) cnt ");
	   sb.append("from board ");
	   
	   int cnt = 0;
	   
	   try {
		pstmt = conn.prepareStatement(sb.toString());
		rs = pstmt.executeQuery();
		
		rs.next();
		
		//cnt = rs.getInt(1);
		cnt = rs.getInt("cnt");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return cnt;
	   
   }//end of getTotalCount
   	
   //=================================================================
   
   //데이터 한 건 조회 메소드 - 게시글 번호 getData()
   public BoardVOrealnamevo getData(int bno) {
	   
	   sb.setLength(0);
	   sb.append("select * from board ");
	   sb.append("where bno = ? ");
	   
	   BoardVOrealnamevo vo = new BoardVOrealnamevo();
	   
	   try {
		pstmt = conn.prepareStatement(sb.toString());
		pstmt.setInt(1, bno);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		 String title = rs.getString(2);
         String writer = rs.getString(3);
         String contents = rs.getString(4);
         String regdate = rs.getString(5);
         String ip = rs.getString(6);
         int status = rs.getInt(7);
         int hits = rs.getInt(8);
         
         vo = new BoardVOrealnamevo(bno, title, writer, contents, regdate, ip, status, hits);
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return vo;
	   
   }
   
   //=================================================================================
   
   
   //게시글 수정 메소(제목 , 내용)  modifyData
   
   public void modifyData(BoardVOrealnamevo vo) {
	   sb.setLength(0);
	   sb.append("update board ");
	   sb.append("set title=?, contents=? ");
	   sb.append("where bno = ? ");
	   
	   try {
		pstmt = conn.prepareStatement(sb.toString());
		
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContents());
		pstmt.setInt(3, vo.getBno());
		
		pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   
	   
   }//end of modifyData
   
   //=========================================
   
   //게시글 삭제 메소드 - deleteOk 
   
   public void deleteData(int Bno) {
	   sb.setLength(0);
	   sb.append("delete board ");
	   sb.append("where bno = ? ");
	   
	   try {
		pstmt = conn.prepareStatement(sb.toString());
		
		pstmt.setInt(1, Bno);
		
		
		pstmt.executeUpdate();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   
	   
   }//end of delete
   //=================================================================
   
   //조회수 증가
   public void raisHits(int bno) {
	      sb.setLength(0);
	      sb.append("update board ");
	      sb.append("set hits = hits+1 ");
	      sb.append("where bno = ? ");
	      
	      try {
	         pstmt = conn.prepareStatement(sb.toString());
	         pstmt.setInt(1, bno);
	         
	         pstmt.executeUpdate();
	         
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
   }
   
   
   

}



























