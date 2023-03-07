<%@ tag body-content="scriptless" pageEncoding="UTF-8" %>
<%@ attribute name = "title" %>
<%@ attribute name = "colName" %>

<jsp:useBean id = "product" class = "chap10.Product" />

<h2><jsp:doBody /><!-- 시작 태그와 종료 태그 사이의 컨텐츠 --></h2>
<hr />

<h4>${title}</h4>

<table>
  <tr>
    <th>${colName}</th>
  </tr>
  
<%
	for(String prod : product.getProductList()) {
		out.println("<tr><td>" + prod + "</td></tr>");
	}
%>
</table>