<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL: out</title>
	<style>
		table, td {
			border: 2px solid gray;
			border-collapse: collapse;
		}
		
		td {
			padding: 10px;
		}
	</style>
</head>

<body>
	<h2>JSTL c:out</h2>
	<hr />
	
	<table>
		<c:forEach items = "${members}" var = "member">
			<tr>
				<td>${member.name}</td>
				<td>
					<c:out value = "${member.email}" escapeXml = "false"> <!-- escapeXml를 false로 줘야 html 코드로 인식하고 true면 문자열 취급한다. -->
						<font color = "red">email 없음</font>
					</c:out>	
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>