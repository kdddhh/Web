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
	
	<c:url value = "/chap11/choose.jsp" var = "target"> <!-- context를 생략하면 기본 경로가 현재 어플리케이션 -->
		<c:param name = "sel">a</c:param> <!-- /myWeb/chap11/choose.jsp?sel=a -->
	</c:url>
	
	단순 출력: ${target}<br />
	링크 연동: <a href = "${target}">choose.jsp 이동</a>
	
	<hr />
	<c:url value = "/choose.jsp" context = "/donghyunKim_web" var = "target">
		<c:param name = "sel" value = "b" /><!-- /donghyunKim_web/choose.jsp?sel=b -->
	</c:url>
	
	단순 출력: ${target}<br />
	링크 연동: <a href = "${target}">choose.jsp 이동</a>
	
</body>
</html>