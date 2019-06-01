package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.ResForm;
import idao.IResDao;

public class ResAction extends Action{
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
		List list = ires.getResByName(bname);
		request.setAttribute("ress", list); 
		return new ActionForward("/result.jsp");
	}
}
