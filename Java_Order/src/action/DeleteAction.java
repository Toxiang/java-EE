package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import idao.IOrderDao;

public class DeleteAction extends Action{
	private IOrderDao iord;
	public IOrderDao getIord(){
		return iord;
	}
	public void setIord(IOrderDao iord){
		this.iord = iord;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		String name = (String) request.getParameter("oid");
		iord.deleteOrder(name);
		return new ActionForward("/cash.jsp");
	}

}
