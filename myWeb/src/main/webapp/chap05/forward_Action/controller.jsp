<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>contoller.jsp</title>
</head>

<body>
	<h1>forward action example</h1>
	<hr />
	<h3>이 내용이 사용자에게 보일까요?</h3>
	
	<jsp:forward page="main.jsp">
		<jsp:param name="email" value="son@daum.net" />
		<jsp:param name="tel" value="010-1234/5678" />
	</jsp:forward>
	<!-- forward를 만나는 순간 앞의 모든 내용은 버퍼에서 삭제된다. -->
</body>
</html>