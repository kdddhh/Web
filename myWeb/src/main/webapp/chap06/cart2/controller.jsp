<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<jsp:forward page="login.jsp">
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
   
	</jsp:forward>
</body>
</html>