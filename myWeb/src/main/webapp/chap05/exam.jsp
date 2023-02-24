<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수평 구구단 출력</title>
</head>
	<style>
		table, td {
			border: 2px solid gray;
			border-collapse: collapse;
		}
		
		td {
			padding: 8px;
			text-align: center;
		}
	</style>
<body>
	<table>
		<tr>
	<%
		for(int i = 2; i <= 9; i++) {
	%>	
		<th><%= i + "단" %></th>
	<%
		}
	%>	
		</tr>
		<tr>	
	<%
		for(int i = 2; i <= 9; i++) {
	%>
		<td>
	<% 
			for(int j = 1; j <= 9; j++) {
	%>				
		<%= i + " * " + j + " = " + i * j %><br />				
	<% 	
			}
	%>
		</td>
	<%
		}
	%>	
		</tr>	
	</table>
</body>
</html>