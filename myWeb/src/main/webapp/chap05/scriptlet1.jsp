<%@ page contentType="text/html; charset=UFT-8"
		 pageEncoding = "EUC-KR"
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>scriptlet1.jsp</title>
</head>

<body>
	<%
		for(int i = 0; i < 10; i++) {
			out.println(i + "<br />"); //���⼭�� println�� �ҽ��ڵ��� ����ȿ���̴�. ��°���� ������ �ƴ�
		}
	%>
</body>
</html>