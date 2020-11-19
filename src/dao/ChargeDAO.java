package dao;
import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import connection.OracleXEConnection;


public class ChargeDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	Connection conn = null;

	public ChargeDAO() { // dbcon을 압축해서 짧게 사용합니다.
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

			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// addData() end
}