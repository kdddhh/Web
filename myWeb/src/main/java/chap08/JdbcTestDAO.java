package chap08;

import java.sql.*;
import java.util.*;

public class JdbcTestDAO {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public JdbcTestDAO() {
		String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
		String jdbc_url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "scott";
		String pwd = "tiger";
		
		try {
			Class.forName(jdbc_driver);
		    conn = DriverManager.getConnection(jdbc_url, user, pwd);
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
	}
	
	public void insert(JdbcTestDO DO) {
		this.sql = "insert into jdbc_test values(?, ?)";
		   
	      try {
	         this.pstmt = conn.prepareStatement(sql);
	         this.pstmt.setString(1, DO.getUsername());
	         this.pstmt.setString(2, DO.getEmail());
	         this.pstmt.executeUpdate();
	      }
	      catch (Exception e) {
	         e.printStackTrace();
	      }
	      finally {
	         try {
	            if(!pstmt.isClosed()) {
	               pstmt.close();
	            }
	         }
	         catch (Exception e) {
	            e.printStackTrace();
	         }
	      }
	}
	
	public ArrayList<JdbcTestDO> select() {
		ArrayList<JdbcTestDO> list = new ArrayList<JdbcTestDO>();
		JdbcTestDO testDO = null;
		
		this.sql = "select * from jdbc_test";
		   
		   try {
		      this.stmt = conn.createStatement();
		      this.rs = stmt.executeQuery(sql);
		      
		      while(this.rs.next()) {
		    	 testDO = new JdbcTestDO();
		    	 testDO.setUsername(this.rs.getString("username"));
		    	 testDO.setEmail(this.rs.getString("email"));
		    	 
		    	 list.add(testDO);
		      }
		      
		   }
		   catch (Exception e) {
		      e.printStackTrace();
		   }
		   finally {
		      try {
		         if(!stmt.isClosed()) {
		            stmt.close();
		         }
		      }
		      catch (Exception e) {
		         e.printStackTrace();
		      }
		   }
		
		return list;
	}
	
	public void closeConnection() {
		try {
			if(!conn.isClosed()) {
				conn.close();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
