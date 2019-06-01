package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.ResForm;
import idao.IResDao;

public class AddAction extends Action{
	private IResDao ires;
	public IResDao getIres(){
		return ires;
	}
	public void setIres(IResDao ires){
		this.ires = ires;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		ResForm res = (ResForm)form;
		String bname = res.getResname();
		String bid = res.getResid();
		String bprice = res.getResprice();
		ires.AddRes(bid, bname, bprice);
		return new ActionForward("/menu.jsp");
		
	}

}
