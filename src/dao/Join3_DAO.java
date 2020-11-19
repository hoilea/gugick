package dao;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleXEConnection;


import vo.Join3_VO;

public class Join3_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;

	public Join3_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}//생성자 end

	//멤버추가
	public void addData(Join3_VO vo) {
		sb.setLength(0);
		sb.append("insert into CORPORATION ");
		sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");
		

			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, vo.getNumber());
				pstmt.setString(2, vo.getName());
				pstmt.setString(3, vo.getId());
				pstmt.setString(4, vo.getPw());
				pstmt.setInt(5, vo.getPhone());
				pstmt.setString(6, vo.getAddr());
				pstmt.setInt(7, vo.getPcode());
				pstmt.setString(8, vo.getMan());
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
				sb.append("select * from CORPORATION ");
				sb.append("where CR_ID = ? ");
				
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
