package chap08;

public class JdbcTestDO {
	private String username;
	private String email;
	
	public JdbcTestDO() {
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
}
