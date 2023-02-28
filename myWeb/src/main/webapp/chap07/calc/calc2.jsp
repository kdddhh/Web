<%@ page contentType="text/html; charset=UTF-8"
	import = "chap07.*"
%>

<%	
	int result = 0;
	if(request.getMethod().equals("POST")) {
%>

<jsp:useBean id = "calc" class = "chap07.Calc" scope = "page" />
<jsp:setProperty property="*" name="calc" />
<!-- setProperty는 기본 자료형 한해서 자동으로 형변환해준다. 그래서 Calc의 num1, num2를 int로 선언함 -->

<%
		result = calc.calcResult();
	}
%>

<!DOCTYPE html> 
<html>
	<head> 
	<meta charset="UTF-8" /> 
<title>calc2.jsp</title>
</head>
<body>
	<h2>JSP 프로그램 구현 유형 2</h2>
	<hr />
	
	<form method="POST" action = "">
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
</body>
</html>