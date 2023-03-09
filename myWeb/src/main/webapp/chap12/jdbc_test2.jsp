<%@ page contentType="text/html; charset=UTF-8"
	import = "java.util.*, chap12.*"
%>

<%
	if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
	}
%>

<jsp:useBean id = "DAO" class = "chap12.JdbcTestDAO" />
<jsp:useBean id = "DO" class = "chap12.JdbcTestDO" />
<jsp:setProperty name = "DO" property = "*" />

<%
	String result = "";

	if(request.getMethod().equals("POST")) {
		DAO.insert(DO);
	}
	
	ArrayList<JdbcTestDO> list = DAO.select();
	for(JdbcTestDO testDO : list) {
		result += "<li>" + testDO.getUsername() + " | " + testDO.getEmail() + "</li>";
	}
%>

<!-- DBCP를 이용하는 model을 사용하여 기능을 구현
	강사님이 사용하신 jstl이랑 비교하기..
  -->

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jdbc_test2.jsp</title>
</head>

<body>
	<form method="POST">
   <fieldset>
      <legend>정보 등록</legend>
      <label for="username">이름</label>
      <input type="text" name="username" id="username" />
      <label for="email">이름</label>
      <input type="text" name="email" id="email" />
      <input type="submit" value="등록" />
   </fieldset>
   </form>
   
   <hr />
   
   <h3>등록 목록</h3>
   <ol>
   		<%= result %>
   </ol>
</body>
</html>