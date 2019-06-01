package form;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
public class ResForm extends ActionForm{
	private String resid;
	private String resname;
	private String resprice;
	public void setResid(String id){
		resid = id;
	}
	public String getResid(){
		return resid;
	}
	public void setResname(String name){
		resname = name;
	}
	public String getResname(){
		return resname;
	}
	public void setResprice(String price){
		resprice = price;
	}
	public String getResprice(){
		return resprice;
	}
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		return null;
	}
	public void reset(ActionMapping mapping, HttpServletRequest request) {
	}

}
