package chap08;

public class JdbcData {
	private String username;
	private String email;
	
	public JdbcData(String username, String email) {
		this.username = username;
		this.email = email;
	}
	
	public String getDataUsername() {
		return this.username;
	}
	
	public String getDataEmail() {
		return this.email;
	}
}
