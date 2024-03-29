<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL: remove</title>
</head>

<body>
	<h2>JSTL c:remove</h2>
	<hr />
	
	<c:set var = "msg" value = "Hello, World!" /> <!-- scope = "page"가 생략되어있음 현재 페이지 안에서만 사용 가능한 변수 msg를 만들겠다 -->
	msg(삭제 전): ${msg}<br />
	<hr />
	
	<c:remove var = "msg" />
	msg(삭제 후): ${msg}<br />
</body>
</html>