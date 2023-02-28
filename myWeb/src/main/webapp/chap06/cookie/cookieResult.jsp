<%@ page contentType="text/html; charset=UTF-8"%>

	<%
		// 요청에 포함된 모든 쿠키의 이름과 값을 출력하는 코드
		
		Cookie[] cookie = request.getCookies();
		String result = "";
		
		for(Cookie c : cookie) {
			result += "<h4>name: " + c.getName() + " / value: " + c.getValue() + "</h4>";
		}
	%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cookieResult.jsp</title>
</head>

<body>
	<h1>쿠키 확인</h1>
	<hr />
	
	<%= result %>
		
</body>
</html>