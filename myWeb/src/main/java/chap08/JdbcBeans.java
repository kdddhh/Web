package chap08;

import java.sql.*;
import java.util.ArrayList;

public class JdbcBeans {
	private String sql;
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String username;
	private String email;
	
	public JdbcBeans() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			this.conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "scott", "tiger");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void insert(JdbcData data) {
	      this.sql = "insert into jdbc_test values(?, ?)";
	      
	      try {
	         this.pstmt = this.conn.prepareStatement(sql);
	         this.pstmt.setString(1, data.getDataUsername());
	         this.pstmt.setString(2, data.getDataEmail());
	         this.pstmt.executeUpdate();
	      }
	      catch (Exception e) {
	         e.printStackTrace();
	      }
	      finally {
	         try {
	            if(!this.pstmt.isClosed()) {
	            	this.pstmt.close();
	            }
	         }
	         catch (Exception e) {
	            e.printStackTrace();
	         }
	      }
	}
	
	public ArrayList<JdbcData> select() {
		ArrayList<JdbcData> list = new ArrayList<JdbcData>();
		this.sql = "select * from jdbc_test";
		   
		   try {
		      this.stmt = conn.createStatement();
		      this.rs = stmt.executeQuery(this.sql);
		      
		      while(this.rs.next()) {
		        list.add(new JdbcData(this.rs.getString("username"), this.rs.getString("email")));
		      }
		      
		   }
		   catch (Exception e) {
		      e.printStackTrace();
		   }
		   finally {
		      try {
		         if(!this.stmt.isClosed()) {
		            this.stmt.close();
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
			if(!this.conn.isClosed()) {
				this.conn.close();
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
	}
}








