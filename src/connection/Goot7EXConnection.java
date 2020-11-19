

package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//singleTone pattern

public class Goot7EXConnection {
   private static Goot7EXConnection oc = null;
   private static Connection conn;
   
   final String DRIVER = "oracle.jdbc.driver.OracleDriver";
   final String URL = "jdbc:oracle:thin:@192.168.0.17:1521:XE";
   final String USER = "scott";
   final String PASSWORD = "tiger";
   
   
   private Goot7EXConnection() {}

   public static Goot7EXConnection getInstance() {
      if(oc == null) oc = new Goot7EXConnection();
      return oc;
   }
   
   public Connection getConnection() {
      if(conn == null) {
         try {
            Class.forName(DRIVER);
               conn = DriverManager.getConnection(URL, USER, PASSWORD);
              
               System.out.println("conn :"+ conn);
            
         } catch (ClassNotFoundException e) {
            // TODO: handle exception
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
         }
         
      }
      return conn;
   }
   
}