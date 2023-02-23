<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>scriptlet1.jsp</title>
</head>

<body>
	<%
		for(int i = 0; i < 10; i++) {
			out.println(i + "<br />"); //여기서의 println는 소스코드의 개행효과이다. 출력결과의 개행이 아님
		}
	%>
</body>
</html>