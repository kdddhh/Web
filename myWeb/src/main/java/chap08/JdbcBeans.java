package chap08;

import java.sql.*;
import java.util.ArrayList;

public class JdbcBeans {
	private String sql;
	private String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	private String jdbc_url = "jdbc:oracle:thin:@localhost:1521:XE";
	private String user = "scott";
	private String pwd = "tiger";
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private String username;
	private String email;
	
	public JdbcBeans() {
		try {
			Class.forName(jdbc_driver);
			this.conn = DriverManager.getConnection(jdbc_url, user, pwd);
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
	
	public String getUsername() {
		return this.username;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public void insert() {
	      this.sql = "insert into jdbc_test values(?, ?)";
	      
	      try {
	         this.pstmt = this.conn.prepareStatement(sql);
	         this.pstmt.setString(1, this.username);
	         this.pstmt.setString(2, this.email);
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








