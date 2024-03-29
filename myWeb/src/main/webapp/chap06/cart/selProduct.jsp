<%@ page contentType="text/html; charset=UTF-8"
		import = "java.util.*"
%>

<%
	/*
		[ selProduct.jsp의 보완 사항 ]
		1. 로그인 한 사용자만 이용할 수 있다.
		2. 로그인 하지 않은 사용자의 접근은 로그인 페이지로 리다이렉팅 한다.
		3. 로그아웃 기능 추가
	*/
	
	String script = "";	

	if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		String product = request.getParameter("product");
		
		if(session.getAttribute("productList") == null) {
			session.setAttribute("productList", new ArrayList<String>());
		}
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("productList");
		list.add(product);	
%>
	<script>
		alert('<%= product %> 상품을 구매했습니다.');
	</script>
<%				
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>selProduct.jsp</title>
</head>
<body>
	<h1>상품 구매</h1>
	<hr />
	
	<h4><%= session.getAttribute("userId") %>님을 환영합니다..^^</h4>
	<button name = "logout" id = "logout" type = "reset">로그아웃</button>
	<br />
	
	<form method = "POST">
	<fieldset>
		<legend>상품 선택</legend>
		<select name = "product">
			<option selected>사과</option>
			<option>딸기</option>
			<option>배</option>
			<option>포도</option>
			<option>오렌지</option>
			<option>수박</option>
		</select>
		<input type = "submit" value = "추가" />
	</fieldset>
	</form>
	
	<hr />
	
	<h4>
		<a href = "checkOut.jsp">장바구니 확인</a>
	</h4>
	
</body>
</html>