<%@ page contentType="text/html; charset=UTF-8" %>

<%
   String script = "";

	// 세션이 최초 생성이면 true, 재사용이면 false
   if(session.isNew()) {
      script += "alert('세션 객체가 생성되었습니다!')";
      
      session.setAttribute("userName", "김연아");
   }
%>

<!DOCTYPE html>

<html>
<head>
   <meta charset="UTF-8">
   <title>session.jsp</title>
   <script>
      <%= script %>
   </script>
</head>

<body>

   <h1>session 예제</h1>
   <hr />
   
   <!-- session.getAttribute()는 object타입으로 값을 반환하기 때문에 
   반환값을 사용하려면 원하는 타입에 맞게 명시적 형변환을 해야한다. -->
   <h4><%= session.getAttribute("userName") %>님의 방문을 환영합니다.</h4>
   <h4>세션 유후 시간: <%= session.getMaxInactiveInterval() %></h4>
   <h4>세션 ID: <%= session.getId() %></h4>

</body>
</html>