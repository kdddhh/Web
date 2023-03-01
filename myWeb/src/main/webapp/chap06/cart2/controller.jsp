<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<jsp:forward page="login.jsp">
   		<jsp:param value="longlee" name="id" />
   		<jsp:param value="6789" name="passwd" />
	</jsp:forward>
	
	<jsp:forward page="selProduct.jsp">
		
	</jsp:forward>
</body>
</html>