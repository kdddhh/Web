package mvc.twitter;

import java.util.*;

public class CartBean {
	private final String ID = "longlee";
	private final String PASSWD = "6789";
	ArrayList<String> productlist;
	
	public CartBean() {
		productlist = new ArrayList<String>();
	}
	
	public boolean checkLogin(String id, String passwd) {
		boolean result = false;
		
		if(id != null && id.equals(this.ID) && passwd != null && passwd.equals(this.PASSWD)) {
			result = true;
		}
		
		return result;
	}
	
	public ArrayList<String> getProductList() {
		return this.productlist;
	}
	
	public void addProduct(String product) {
		this.productlist.add(product);
	}
	
	public void cleatProductList() {
		this.productlist.clear();
	}
}
