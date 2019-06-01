package action;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import idao.IOrderDao;

public class CashAction extends Action{
	private IOrderDao iord;
	public IOrderDao getIbook(){
		return iord;
	}
	public void setIbook(IOrderDao iord){
		this.iord = iord;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form){
		
		iord.cashOrder();
		return new ActionForward("/finish.jsp");
	}

}
