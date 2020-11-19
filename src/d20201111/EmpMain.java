package d20200225;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmpMain {
	public static void main(String[] args) {
		//1. 변수설정
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String password = "tiger";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sb = new StringBuffer();
		
		//2.드라이버 로딩
		try {
			Class.forName(driver);
//			System.out.println(driver+url+user+password);
			
			//3. connection 객체 생성
			conn = DriverManager.getConnection(url, user, password);
			
			System.out.println("conn : "+conn);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("connection 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("connection 실패");
		}
		//4.sql 문장
		sb.append("select * from emp ");
		
		//5.Statment 문장 객체
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			//6. 실행
			rs = pstmt.executeQuery();
			
			//7.각 레코드별로 로직 처리
			while(rs.next()) {
				int empno = rs.getInt(1);
				String ename = rs.getString(2);
				String job = rs.getString(3);
				int mgr = rs.getInt(4);
				int hiredate = rs.getInt(5);
				int sal = rs.getInt(6);
				int comm = rs.getInt(7);
				int deptno = rs.getInt(8);
				System.out.println(empno+"\t"+ename+"\t"+job+"\t"+mgr+"\t"+hiredate+"\t"+sal+"\t"+comm+"\t"+deptno);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//8.자원 반납
		finally {
			if(rs!=null) {
				try {
					rs.close();
					if(pstmt != null)pstmt.close();
					if(conn != null)conn
					.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}//end of main

	
}//end of class
