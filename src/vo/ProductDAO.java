package vo;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;

import connection.OracleXEConnection;


	public class ProductDAO {
	   //드라이버 설정 작업
		/*
		 * DBMS에 접근할 싱글톤 객체를 만들었으니까 필요 없음
	   final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	   final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	   final String USER = "scott";
	   final String PASSWORD = "tiger";
	   */
	   
	   StringBuffer sb = new StringBuffer();
	   ResultSet rs = null;
	   PreparedStatement pstmt = null;
	   Connection conn = null;
	   
	   //생성자 호출시 db 접속이 완료되게 처리 
	   public ProductDAO() {
		   /*
	      try {
	         Class.forName(DRIVER);
	         conn = DriverManager.getConnection(URL, USER, PASSWORD);
	         System.out.println("conn : "+ conn);
	         }catch(ClassNotFoundException cnfe) {
	            cnfe.printStackTrace();
	         }catch (SQLException e) {
	         // TODO: handle exception
	            e.printStackTrace();
	      }
	      */
		   
		   conn = OracleXEConnection.getInstance().getConnection();

	   }
	   
	   
	   //상품정보 입력하는 메소 - addData()
	   public int addData(ProductVO vo) {
		   sb.setLength(0);
		   sb.append("insert into product ");
		   sb.append("values (product_pno_seq.nextval,?,?,?,?,?,?,? )  ");
		   
		   int result = -1;
		   
		  
		   try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getPname());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setInt(3, vo.getDcratio());
			pstmt.setString(4, vo.getPrpdesc());
			pstmt.setInt(5, vo.getQty());
			pstmt.setString(6, vo.getImgfile());
			pstmt.setString(7, vo.getBigfile());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return result;
		   
	   }
	   
	   
	 //상품정보를 전체 조회하는 메소드 => getAllData()    
	   public ArrayList<ProductVO> getAllData(){
	      ArrayList<ProductVO> list = new ArrayList<ProductVO>();
	      sb.setLength(0);
	      sb.append("select * from product " ); 
	      try {
	         pstmt = conn.prepareStatement(sb.toString());
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            int pno = rs.getInt(1);
	            String pname = rs.getString(2);
	            int price = rs.getInt(3);
	            int dcratio =rs.getInt(4);
	            String prodesc = rs.getString(5);
	            int qty = rs.getInt(6);
	            String imgfile = rs.getString(7);
	            String bigfile = rs.getString(8);
	            
	            ProductVO vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgfile, bigfile);
	            list.add(vo);
	                  
	         }
	      } catch (SQLException e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      }
	      return list;
	   }  //getAllData()end  이 메소드를 사용하면 전체의 정보를 불러옴. 
	   
	   //=========================================================================
	   
	 //상 품 1개의 정보를 조회합니다 ( 상품 번호를 이용하여 조회합니다 ) getData()
	   public ProductVO getData(int pno) {
	      sb.setLength(0);
	      sb.append("select * from product ");
	      sb.append("Where pno=? " );
	      
	      ProductVO vo = null;   //vo를 리턴해야해서 전역변수로 선언해줌
	      
	      try {
	         pstmt = conn.prepareStatement(sb.toString());
	         pstmt.setInt(1, pno);   //사용자가 필요한 상품번호 받아오는곳
	         
	         rs = pstmt.executeQuery();
	         
	         rs.next();
	         String pname = rs.getString(2);    // 지금부터 상품번호 기준으로 정보를 조회하는 sql
	         int price = rs.getInt(3);
	         int dcratio = rs.getInt(4);
	         String prodesc = rs.getString(5);
	         int qty = rs.getInt(6);
	         String imgfile = rs.getString(7);
	         String bigfile = rs.getString(8);
	         
	         vo = new ProductVO(pno, pname, price, dcratio, prodesc, qty, imgfile, bigfile);
	         //vo에 위의 sql 정보들을 담아줍니다 
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      return vo; // 마지막으로 위에 담았던 정보들을 return 해줍니다
	      
	   }//getData() end 상품번호를 기준으로 정보들을 조회해주는 메소드입니다
	   
	   //===========================================================================================
	   
	   //개별 상품 이름으로 조회 getDatabyname(){
	   
	   public ProductVO getDatabyName(String pname) {
	      sb.setLength(0);
	      sb.append("select * from product ");
	      sb.append("where pname=? " );
	      
	      ProductVO vo = null;   //vo를 리턴해야해서 전역변수로 선언해줌
	      
	      try {
	         pstmt = conn.prepareStatement(sb.toString());
	         pstmt.setString(1, pname);   //사용자가 필요한 상품번호 받아오는곳
	         
	         rs = pstmt.executeQuery();
	         
	         rs.next();
	         int pno = rs.getInt(1);
	         String pname1 = rs.getString(2);// 지금부터 상품번호 기준으로 정보를 조회하는 sql
	         int price = rs.getInt(3);
	         int dcratio = rs.getInt(4);
	         String prodesc = rs.getString(5);
	         int qty = rs.getInt(6);
	         String imgfile = rs.getString(7);
	         String bigfile = rs.getString(8);
	         
	         vo = new ProductVO(pno, pname1, price, dcratio, prodesc, qty, imgfile, bigfile);
	         //vo에 위의 sql 정보들을 담아줍니다 
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      return vo;
	   }//end of getDatabyName()
	   
	   //============================================================================================
	   
	//   새롭게 주가한 상품의 정보를 변경, 삭제 . ok  

	   
	   
	   
	   
	   //전체 게시글 조회 getAllData()
	   
	   
	   
	   
	   
	   
	   

	   
	   
	   
	   
	}//end of end