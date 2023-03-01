<%@ page contentType="text/html; charset=UTF-8"
	import = "java.sql.*, chap08.*, java.util.*"
%>

<jsp:useBean id = "jdbcBeans" class = "chap08.JdbcBeans" scope = "page" />
<jsp:setProperty property = "*" name = "jdbcBeans" />

<%	
	String str = "";
	
	if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		JdbcData data = new JdbcData(request.getParameter("username"), request.getParameter("email"));
		jdbcBeans.insert(data);
	}	

	ArrayList<JdbcData> list = jdbcBeans.select();
	for(JdbcData data : list) {
		str += "<li>" + data.getDataUsername() + " | " + data.getDataEmail() + "</li>";
	}	
	
	jdbcBeans.closeConnection();	
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
		<%= str %>
	</ol>
	
</body>
</html>