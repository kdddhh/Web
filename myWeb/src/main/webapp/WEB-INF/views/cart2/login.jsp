<%@ page  contentType="text/html; charset=UTF-8" %>

<%
	/*
		1. 로그인 하지 않은 사용자만 접근할 수 있다
		2. 로그인 한 사용자의 기본 화면은 selProduct로 지정
	*/
%>

<!DOCTYPE html>

<html>
<head>
   <meta charset="UTF-8">
   <title>login.jsp </title>
</head>

<body>
   <h1>로그인</h1>
   <hr/>
   
   <form method = "POST">
   <fieldset>
      <label for = "id">ID</label>
      <input type = "text" name = "id" id = "id"/>
      <label for = "passwd">/ Password</label>
      <input type = "password" name = "passwd" id = "passwd"/>
      <input type = "submit" value = "login"/>
   </fieldset>
   </form>
</body>
</html>