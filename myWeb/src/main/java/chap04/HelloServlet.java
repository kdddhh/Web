package chap04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "나의 첫 서블릿", urlPatterns = { "/HelloServlet" })
// 어노테이션으로 WebServlet을 통해 새롭게 만드는 서블릿이 /HelloServlet으로 응답한다.
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 객체 직렬화. 자바 객체를 별도의 파일로 저장하고 나중에 재사용할 때 그대로 사용할 수 있게 한다.
	// 그때 식별번호로 사용하는 것이 serialVersionUID

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		// response.getWriter().append("서버 응답: ").append(request.getRequestURL());
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html><head><meta charset=\"UTF-8\" /><title>calc1.jsp</title></head>");
		out.println("<body><h2>Servlet 응답</h2><hr /><hr />\r\n"
				+ "	<h4>Hello, World...!</h4></body>\r\n"
				+ "</html>");
	}
	// response는 서버의 응답을 객체화 해놓은 것
	// response.getWriter() 출력버퍼임. 꽉 차면 내보내거나, 서블릿이 종료될 때 내보낸다.
	// request.getContextPath() 현재 어떤 위치에서 요청이 들어왔나를 의미함. 현재 웹 페이지의 주소를 반환한다.
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
/*
	서블릿은 JSP의 내장 객체들이 매개변수로만 제공된다.
*/