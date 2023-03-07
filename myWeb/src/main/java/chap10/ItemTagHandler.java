package chap10;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class ItemTagHandler extends SimpleTagSupport {
	
	private String title;
	private String colName;
	
	@Override
	public void doTag() throws IOException, JspException {
		JspWriter out = getJspContext().getOut();
		JspFragment body = getJspBody();
		Product product = new Product();
		StringBuffer result = new StringBuffer();
		// String: 고정 문자열을 처리할 때 사용. 즉, 어떠한 경우에도 변경될 수 없다. 변경한다면 기존의 문자열을 없어지고 새로운 문자열이 만들어짐
		// StringBuffer: 가변 문자열을 처리할 때 사용. 문자열이 계속 변경된다면 얘를 사용해야함. 여유 공간을 가지고 있기 때문에 문자열을 조작할 수 있다.
		
		if(body != null) {
			out.println("<h2>");	
			body.invoke(null);
			out.println("</h2>");
		}
		
		result.append("<hr /><h4>")
		.append(title)
		.append("</h4><table><tr><th>")
		.append(colName)
		.append("</th></tr>");
		out.println(result.toString());
		
			for(String prod : product.getProductList()) {
				out.println("<tr><td>" + prod + "</td></tr>");
			}

			result.append("</table>");
		
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getColName() {
		return colName;
	}

	public void setColName(String colName) {
		this.colName = colName;
	}
	
	
}
