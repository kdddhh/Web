<%@ page contentType="text/html; charset=UTF-8"
	import = "java.sql.*"
%>

<%

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jdbc_test.jsp</title>
</head>

<body>
	<h1>JDBC test v2</h1>
	<hr />
	
	<form method = "POST">
	<fieldset>
		<legend>정보 등록</legend>
		<label for = "username">이름</label>
		<input type = "text" name = "username" id = "username" />
		<label for = "email"> / 이메일</label>
		<input type = "text" name = "email" id = "email" />
		<input type = "submit" value = "등록" />
	</fieldset>
	</form>
	
	<hr />
	
	<h3>등록 목록</h3>
	
	<ol>
		<%= list %>
	</ol>
	
</body>
</html>