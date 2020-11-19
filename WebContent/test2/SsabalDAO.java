package dao;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.BoardVOrealnamevo;
import vo.SsabalVO;
import vo.boardVO;
import vo.kokoaVO;
import vo.kokoaVOrealnamevo;


public class SsabalDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public SsabalDAO() { // dbcon을 압축해서 짧게 사용합니다.
		conn = OracleXEConnection.getInstance().getConnection();
	}// 생성자 end

	// 게시글 입력 메소드 - addData();
	public void addData(int total) {
		sb.setLength(0);
		sb.append("insert into ssabal(donation) ");
		sb.append("values (?) ");

		try {
			ps = conn.prepareStatement(sb.toString());
//			pstmt.setString(1, vo.getOdd_number());
//			pstmt.setString(2, vo.getOpb_account_number());
//			pstmt.setString(3, vo.getOp_id());
			ps.setInt(1, total);
//			pstmt.setString(5, vo.getOdd_mof());
//			pstmt.setString(6, vo.getOdd_attr());

			ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addData() end
	
	//=========================================================================================
	   //전체 조회 - getAllData()
	   public ArrayList<SsabalVO> getEverthing() {
	      ArrayList<SsabalVO> list = new ArrayList<SsabalVO>();
	      
	      sb.setLength(0);
	      sb.append("select * from ssabal ");
	      sb.append("order by desc ");
	      
	      try {
	         ps = conn.prepareStatement(sb.toString());
	         rs = ps.executeQuery();
	         
	         while(rs.next()) {
	            String onenumber = rs.getString(1);	//개인후원번호
	            String accounts = rs.getString(2);	//개인회원 계좌번호
	            String ids = rs.getString(3);		//개인회원 아이
	            int donation = rs.getInt(4);		//개인 후원금
	            String mof = rs.getString(5);		//후원방법
	            String attrs = rs.getString(6);		//후원방식
	            
	            SsabalVO vo = new SsabalVO(onenumber, accounts, ids, donation, mof, attrs);
	               
	            list.add(vo);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      return list;
	      
	      
	      
	   }
	   // getEverthing end
	   
	   //==============================================================================================
	   
	// 총 얼마나 후원했는지 나오는 메소드
	   public int getsum() {
		   sb.setLength(0);
		   sb.append("select sum(donation) as con from ssabal ");

		   
		   int con = 0;
		   
		   try {
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			
			rs.next();
			
			//cnt = rs.getInt(1);
			con = rs.getInt("con");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return con;
		   
	   }//end 
	   
	   public int getpeople() {
		   sb.setLength(0);
		   sb.append("select count(donation) as con from ssabal ");

		   
		   int con = 0;
		   
		   try {
			ps = conn.prepareStatement(sb.toString());
			rs = ps.executeQuery();
			
			rs.next();
			
			//cnt = rs.getInt(1);
			con = rs.getInt("con");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return con;
		   
	   }//end 
	
	
}//main end