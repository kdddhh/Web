<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String gugu = "";
	for(int num = 0; num < 10; num++) {
		gugu += "<tr>\n\t";
		for(int dan = 2; dan < 10; dan++) {
			if(num == 0) {
				gugu += "<th> " + dan + " 단 </th>";
			}
			else {
				gugu += "<td> " + dan + " * " + num + " = " + (dan * num) + "</td>";
			}
		}
		gugu += "\n</tr>\n";
	}
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>수평 구구단 출력</title>
</head>
	<style>
		table, td, th {
			border: 2px solid gray;
			border-collapse: collapse;
		}
		
		td, th {
			padding: 8px;
			text-align: center;
		}
	</style>
<body>
	<table>
		<%= gugu %>
	</table>
</body>
</html>