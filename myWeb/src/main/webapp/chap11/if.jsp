<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL: if</title>
</head>

<body>
	<h2>JSTL c:if</h2>
	<hr />
	
	<c:set var = "msg" value = "user1" />
	msg: ${msg}
	<hr />
	
	<c:if test = "${msg == 'user1'}" var = "result" />
	result: ${result}
	<hr />
	
	<c:if test = "${msg == 'user1'}" var = "result"> <!-- 조건이 true일때만 사이에 있는 내용이 실행 -->
		test result: ${result}
	</c:if>
	<hr />
	
	<c:if test = "${msg == 'user2'}" var = "result"> <!-- 조건이 거짓이기 때문에 출력이 안됨 -->
		test result: ${result}
	</c:if>
	
	result: ${result}
</body>
</html>