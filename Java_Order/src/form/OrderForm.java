package form;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class OrderForm extends ActionForm{
	public String name;
	public String price;
	public String num;
	public String getName() {
		return name;
	}
	public String getNum() {
		return num;
	}
	public String getPrice() {
		return price;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;
	}
	public void reset(ActionMapping mapping, HttpServletRequest request) {
	}

}
