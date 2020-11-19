package vo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.print.DocFlavor.STRING;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import connection.OracleXEConnection;

public class FileuploadtestDAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public FileuploadtestDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}
	
	//DBMS에 저장 -inertdata
	public void insertData(FileuploadtestVO vo) {
		sb.setLength(0);
		sb.append("insert into fileuploadtest ");
		sb.append("values (fileuploadtest_fno_seq.nextval, ?, ?, ?, ?) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContents());
			pstmt.setString(4, vo.getFilePath());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//end of inserData
	
	//=======================================================================================
	
	//DB에 저장되어 있는 값을 불러오는것
	
	public FileuploadtestVO getData(String writer) {
		//파일이 복수개열일 가능성이 높으므로 배열에 담도록 수정이 필요함
		sb.setLength(0);
		sb.append("select * from fileuploadtest ");
		sb.append("where writer = ? ");
		
		FileuploadtestVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, writer);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			vo = new FileuploadtestVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}//end of getData()
	
	

}//end of class
