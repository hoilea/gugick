package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.OracleXEConnection;
import vo.Join1_VO;

public class Join1_DAO {
StringBuffer sb = new StringBuffer();
ResultSet rs = null;
PreparedStatement pstmt = null;
Connection conn = null;

public Join1_DAO() {
	conn = OracleXEConnection.getInstance().getConnection();
}//생성자 end

//멤버추가
public void addData(Join1_VO vo) {
	sb.setLength(0);
	sb.append("insert into ORDINARY_PEOPLE ");
	sb.append("values (?,?,?,?,?,?,?,?,?,sysdate) ");
	

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getPw());
			pstmt.setString(4, vo.getBdate());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getAddr());
			pstmt.setInt(7, vo.getPcode());
			pstmt.setInt(8, vo.getGender());
			pstmt.setInt(9, vo.getPhone());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
//addData() end		

		
//아이디 넣으면 이메일 빼주기
		public Join1_VO getUserId(String id){
			sb.setLength(0);
			sb.append("select OP_EMAIL from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");
			
			Join1_VO vo = null;
			
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				String name = rs.getString(2);
				String pw = rs.getString(3);
				String bdate = rs.getString(4);
				String email = rs.getString(5);
				String addr = rs.getString(6);
				int gender = rs.getInt(7);
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return vo;
			
			
		}//isExistById();
		
		//아이디 중복 체크
		public int joinCheck(String userID) {
			int rst = 0;
			sb.setLength(0);
			sb.append("select * from ORDINARY_PEOPLE ");
			sb.append("where OP_ID = ? ");
			
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
