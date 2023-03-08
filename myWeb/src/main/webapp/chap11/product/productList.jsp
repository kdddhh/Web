<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<jsp:useBean id = "product" class = "chap10.Product" scope = "session"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>productList.jsp</title>
</head>

<body>
	
	<h2>EL Test</h2>
	<hr />
	
	<form action = "productSel.jsp" method = "POST">
	<fieldset>
		<legend>상품 선택</legend>
		<select name = "sel">
			<c:forEach items = "${product.productList}" var = "result">
				<option>${result}</option>
			</c:forEach>
		</select>
		<input type = "submit" value = "전송" />
	</fieldset>	
	</form>
	
</body>
</html>