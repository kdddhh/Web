package chap07;
/* 
 * 자바 빈즈의 규칙
 * 1. 클래스는 퍼블릭이어야한다.
 * 2. 필드는 프라이빗이어야한다.
 * 3. 자동생성을 위해서 매개변수가 없는 생성자(디폴트 생성자)를 명시적으로 만들어줘야 한다.
 * 4. 필드가 프라이빗이기 때문에 게터와 세터 메소드(퍼블릭으로)가 있어야 한다.
 * 5. 사용하지 않는 필드의 게터와 세터를 만들지는 않는다.(컨테이너가 자동으로 게터와 세터를 호출하기 때문)
 * 6. 빈즈는 추가적인 자신만의 메소드를 가질 수 있다.(여기서는 로그인 검사 메소드)
 */
public class LoginBean {
	
	private String id;
	private String passwd;
	
	public LoginBean() {		
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getId() {
		return this.id;
	}
	
	public String getPasswd() {
		return this.passwd;
	}
	
	public boolean checkLogin() { // 로그인 검사 메소드
		final String ID = "longlee";
		final String PASSWD = "6789";
		boolean result = false;
		
		if(this.id != null && this.id.equals(ID) && this.passwd != null && this.passwd.equals(PASSWD) ) {
			result = true;
		}
		
		return result;
	}
	
}
