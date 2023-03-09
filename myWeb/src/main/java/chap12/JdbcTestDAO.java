package chap12;

import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.sql.*;

public class JdbcTestDAO {
	private DataSource ds;
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = null;
	
	public JdbcTestDAO() {		
		try {
			InitialContext context = new InitialContext();
			this.ds = (DataSource)context.lookup("java:comp/env/jdbc/oracleXE");
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
	}
	
	public void insert(JdbcTestDO DO) {
		this.sql = "insert into jdbc_test values(?, ?)";
		   
	      try {
	    	  this.conn = this.ds.getConnection();
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
	            if(!this.conn.isClosed()) {
	            	this.conn.close();
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
			   this.conn = this.ds.getConnection();
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
		         if(!this.conn.isClosed()) {
		            	this.conn.close();
		            }
		      }
		      catch (Exception e) {
		         e.printStackTrace();
		      }
		   }
		
		return list;
	}
}
