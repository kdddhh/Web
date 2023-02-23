<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%@는 지시자, 디렉티브 
JSP 문서에서는 무조건 첫 번째 지시자가 page여야한다.
page 지시자는 하나의 필수 속성을 가져야한다.
contentType은 서버에서 실행된 이후에 어떤 종류의 응답이 나갈 것인지 결정해주는 속성
mime이라는 표현 형식을 사용하여 종류를 결정한다.(text/html)
지금의 text문서라서 charset으로 인코딩 방식을 UTF-8형식이라는 것을 브라우저에게 알려줘야한다
--%>
    <!-- 동적 웹 콘텐츠 -->
<%
	int result = 0;

	if(request.getMethod().equals("POST")) {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		String operator = request.getParameter("operator");
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		if(operator.equals("+")) {
			result = num1 + num2;
		}
		else if(operator.equals("-")) {
			result = num1 - num2;
		}
		else if(operator.equals("*")) {
			result = num1 * num2;
		}
		else if(operator.equals("/")) {
			result = num1 / num2;
		}
	}
%>    
<%-- <%는 JSP 문서에서 스크립트릿영역에는 자바코드를 작성할 수 있다
_jspService()메소드 영역에 들어가는 코드임
얘를 통해서 브라우저에 요청을 한다.
지금의 경우 result는 메소드 안에서 선언된 로컬변수가 된다
request는 객체이다. 하지만 request라는 객체를 생성한 적이 없다
그런데 사용하고 있다. 즉, JSP에서 기본 제공하는 내장 객체라는 뜻이다
request는 브라우저 요청 자체를 객체화해놓은 내장 객체이다.
여기서 getMethod()를 사용하면 현재 어떤 방식으로 요청하는지를 알려주는 메소드이다
문자열로 반환하기 때문에 equals()로 post인지 get인지 구별해줘야한다.
getPatameter()는 파라미터의 값을 문자열로 반환해준다
따라서 num1과 num2의 경우 Integer클래스의 parseInt()메소드로 숫자값으로 변환해준다

--%>   
    
    
<!DOCTYPE html> <!-- 문서 유형 선언 -->
<html>
	<head> <!-- 현재 html문서의 정보, 처리를 브라우저에 알려주는 역할 -->
	<meta charset="UTF-8" /> <!-- 현재 html의 정보를 알려줌, 또한 셀프 클로징 태그는 종료태그가 없기 때문에 컨텐츠를 가질 수 없다 -->
<title>calc1.jsp</title>
</head>
<body>
	<h2>JSP 프로그램 구현 유형 1</h2>
	<hr />
	
	<form method="POST" action = ""> <!-- html에서 유일하게 사용자 입력 정보를 포함하는 새로운 요청을 서버에게 보낼 수 있다 -->
	<!-- 폼 태그는 메소드와 액션을 필수적으로 가져야 한다.
		액션은 서버에 누가 요청을 처리할 것인가를 의미.
		액션이 없으면 서버에게 현재 웹페이지를 다시 요청한다.
		메소드는 요청방식을 의미.
		브라우저의 주소 표시줄에 URL 입력: GET 방식의 요청
	 -->
	
	<fieldset>
		<legend>간단 계산기</legend>
		<input type = "number" name = "num1" value = "0" />
		<select name = "operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type = "number" name = "num2" value = "0" />
		
		<input type = "submit" value = "계산" />
		<input type = "reset" value = "초기화" />
	</fieldset>
	</form>
	
	<hr />
	<h4>계산 결과: <%= result %></h4>
	<%-- <%=는 익스프레션, 표현식이라고 함
		값을 출력하는 역할을 한다.
		반환값이 있는 메소드를 호출할 수도 있고 직접 계산식을 통해서 출력할 수도 있다.
		여기서는 result라는 변수를 넣었고, 스크립트릿의 조건식에 의해 방식이 post이면 계산 후의 계산 값이 나올 것이고,
		get방식이라면 조건식이 성립하지 않기 때문에 0이 출력된다.
	 --%>
	
	
</body>
</html>