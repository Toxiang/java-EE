package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.OrderForm;
import idao.IOrderDao;

public class OrderAction extends Action{
	private IOrderDao iorder;
	public IOrderDao getIorder(){
		return iorder;
	}
	
	public void setIorder(IOrderDao iorder){
		this.iorder = iorder;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String resid = request.getParameter("resid");
		iorder.Order_name(resid);
		return new ActionForward("/order.jsp");
		
	}

}