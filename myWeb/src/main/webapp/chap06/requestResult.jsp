<%@ page contentType="text/html; charset=UTF-8"
	import = "java.util.*"
%>

<%	
	request.setCharacterEncoding("UTF-8"); // POST방식이면 리퀘스트 메시지의 바디영역을 사용하기 때문에 인코딩이 되지 않고 정보가 넘어간다. 따라서 파라미터를 읽기 전에 이 메소드를 사용해야함
	Enumeration<String> e = request.getParameterNames(); // 요청에 포함된 파라미터 명들을 보여주는 메소드
	String parameterNames = "";

	while(e.hasMoreElements()) {
		parameterNames += e.nextElement() + "  ";
	}
	
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String job = request.getParameter("job");
	String[] favorite = request.getParameterValues("favorite");
	String myFavorite = "";
	
	for(String str : favorite) {
		myFavorite += str + " / ";
	}
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

	<h1>파라미터 정보</h1>
	<hr />
	
	<h4><%= parameterNames %></h4>
	<h4>name: <%= name %></h4>
	<h4>gender: <%= gender %></h4>
	<h4>job: <%= job %></h4>
	<h4>myFavorite: <%= myFavorite %></h4>
	<hr />
	
	<h1>클라이언트 요청 정보</h1>
	<hr />
	
	<h4>cookie: <%= request.getCookies()[0].getName() %> = <%= request.getCookies()[0].getValue() %></h4>
	<h4>method: <%= request.getMethod() %></h4>
	<h4>protocol: <%= request.getProtocol() %></h4>
	<h4>remoteAddr: <%= request.getRemoteAddr() %></h4>
	
</body>
</html>


