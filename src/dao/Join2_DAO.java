package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleXEConnection;

import vo.Join2_VO;

public class Join2_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public Join2_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}//생성자 end

	//멤버추가
	public void addData(Join2_VO vo) {
		sb.setLength(0);
		sb.append("insert into ORGANIZATION ");
		sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");
		

			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, vo.getLinumber());
				pstmt.setString(2, vo.getMan());
				pstmt.setString(3, vo.getName());
				pstmt.setString(4, vo.getId());
				pstmt.setString(5, vo.getPw());
				pstmt.setInt(6, vo.getPhone());
				pstmt.setString(7, vo.getAddr());
				pstmt.setInt(8, vo.getPcode());
				pstmt.setString(9, vo.getEmail());
				
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	//addData() end	
	//아이디 중복 체크
	public int joinCheck(String userID) {
		int rst = 0;
		sb.setLength(0);
		sb.append("select * from ORGANIZATION ");
		sb.append("where OR_ID = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			//중복되는 아이디 있으면 1
			if(rs.next()) {
				rst= 1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 
		}finally {
			return rst;
		}
		
	}// joinCheck end
}
