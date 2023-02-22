<%@ page contentType="text/html; charset=UTF-8"
	import="java.util.Date"
%>
    <!-- 동적 웹 콘텐츠 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello.jsp</title>
</head>
<body>
	<h1>Hello Example 2</h1>
	<hr>
	
	<h3>
	
	<%= new Date().toLocaleString() %>
	
	</h3>
</body>
</html>