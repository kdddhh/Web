<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL: set</title>
</head>

<body>
	<h2>JSTL c:set</h2>
	<hr />
	
	<c:set var = "msg" value = "Hello, World!" /> <!-- scope = "page"가 생략되어있음 현재 페이지 안에서만 사용 가능한 변수 msg를 만들겠다 -->
	msg: ${msg}<br />
	msg: <%= pageContext.getAttribute("msg") %>
	<hr />
	
	<c:set target = "${member}" property = "email" value = "changed@nate.com"/> <!--  ${member}는 매개변수가 없는 멤버 객체를 가르킴 -->
	Member name: ${member.name}<br />
	Member email: ${member.email}
</body>
</html>