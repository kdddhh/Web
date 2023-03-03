<%@ page contentType="text/html; charset=UTF-8"%>

<jsp:useBean id = "bean" class = "mvc.cart.CartBean" scope = "session" />

<%
	if(request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
	}

	String command = request.getParameter("command");
	String viewPath = "/WEB-INF/views/cart2/";
	
	if(session.getAttribute("id") == null) {
		if(request.getMethod().equals("GET")) {
			pageContext.forward(viewPath + "login.jsp");
		}
		else if(request.getMethod().equals("POST")) {
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			if(bean.checkLogin(id, passwd)) {
				session.setAttribute("id", id);
				pageContext.forward(viewPath + "selProduct.jsp");
			}
			else {
				response.sendRedirect("controller.jsp");
			}
		}
	}
	else if(command != null && command.equals("logout")) {
		session.invalidate();
		response.sendRedirect("controller.jsp");
	}
	else if(command != null && command.equals("addCart")) {
		String product = request.getParameter("product");
		bean.addProduct(product);
		request.setAttribute("script", "alert('" + product + " 상품을 구매했습니다');");
		
		pageContext.forward(viewPath + "selProduct.jsp");
	}
	else if(command != null && command.equals("checkOut")) {
		if(session.getAttribute("productist") == null) {
			session.setAttribute("productList", bean.getProductList());
		}
		pageContext.forward(viewPath + "checkOut.jsp");
	}
	else if(command != null && command.equals("clearCart")) {
		bean.cleatProductList();
		pageContext.forward(viewPath + "selProduct.jsp");
	}
	else {
		pageContext.forward(viewPath + "selProduct.jsp");
	}
%>









