<%@ page contentType="text/html; charset=UTF-8" 
isErrorPage="true"%>
<%-- isErrorPage를 true로 설정하면 Exception 내장 객체를 사용할 수 있다.
	이 JSP문서 자체를 실행시키면 아무 의미가 없다. 여기서 예외가 발생하는 것이 아니기 때문.
 --%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>error.jsp</title>
	<style>
		#target {
			border: 2px solid gold;
			background-color: yellow;
			color: red;
			text-align: center;
			padding: 20px;
		}
	</style>
</head>

<body>
	<div id = "target">
		<%= exception %>
		<hr />
	</div>
</body>
</html>















