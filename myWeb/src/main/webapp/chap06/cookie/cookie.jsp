<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 쿠키는 클라이언트에 저장되지만, 서버에서 사용한다
	JSP나 서블릿을 통해 쿠키를 만들고 응답으로 브라우저에게 보낼 수 있다.
	브라우저는 해당 쿠키를 생성한 문서에 재요청을 보내면 요청에 쿠키를 탑재해서 보낼 수 있다.
 -->
 
 <%
 	Cookie cookie = new Cookie("product", "p1234");
 	response.addCookie(cookie);
 %>
 
 <!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cookie.jsp</title>
</head>

<body>
	<h1>Cookie Example</h1>
	<hr />

	<h4>브라우저의 개발자 도구를 이용해 저장된 쿠키를 확인하세요</h4>
	
</body>
</html>