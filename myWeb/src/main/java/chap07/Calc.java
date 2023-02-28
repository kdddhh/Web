package chap07;

public class Calc {
	private int num1;
	private int num2;
	private String operator;
	
	public Calc() {	
	}
	
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	public int calcResult() {
		int result = 0;
		
		if(this.operator != null) {
			if(this.operator.equals("+")) {
				result = this.num1 + this.num2;
			}
			else if(this.operator.equals("-")) {
				result = this.num1 - this.num2;
			}
			else if(this.operator.equals("*")) {
				result = this.num1 * this.num2;
			}
			else if(this.operator.equals("/")) {
				result = this.num1 / this.num2;
			}
		}
		return result;
	}
}
