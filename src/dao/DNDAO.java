package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.net.httpserver.Authenticator.Result;

import connection.OracleXEConnection;
import vo.DNVO;

public class DNDAO {
   
   StringBuffer sb = new StringBuffer();
   
   ResultSet rs = null;
   PreparedStatement ps = null;
   Connection conn = null;

   private PreparedStatement pstmt;

   
   public DNDAO() {
      // TODO Auto-generated constructor stub
      conn = OracleXEConnection.getInstance().getConnection();
   }
   
   public void addData(DNVO vo) {
      sb.setLength(0);
      sb.append("insert into CORPORATION ");
      sb.append("values (?,?,?,?,?,?,?)  ");
      
      try {   
         pstmt = conn.prepareStatement(sb.toString());
         pstmt.setString(1, vo.getCr_name());
         pstmt.setString(2, vo.getCr_number());
         pstmt.setString(3, vo.getCr_man_name());
         pstmt.setString(4, vo.getCr_man_phone_number());
         pstmt.setString(5, vo.getPrice());
         pstmt.setString(6, vo.getBox());
         pstmt.setString(7, vo.getBox2());
         

         pstmt.executeUpdate();
         }catch (SQLException e) {
            e.printStackTrace();
         }
      
   }
   
   
   public int getsum() {
	   sb.setLength(0);
	   sb.append("select sum(price) as con from corporation ");


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
	   sb.append("select count(price) as con from corporation ");


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

   }
   
   

}