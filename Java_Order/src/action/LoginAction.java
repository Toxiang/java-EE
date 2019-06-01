package action;

import idao.ICustomerDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import po.Customer;
//import dao.CustomerDao;
import form.LoginForm;

public class LoginAction extends Action {
	private ICustomerDao icdao;	
	public ICustomerDao getIcdao() {
		return icdao;
	}
	public void setIcdao(ICustomerDao icdao) {
		this.icdao = icdao;
	}
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		LoginForm loginForm = (LoginForm) form;
		String account = loginForm.getAccount();
		String password = loginForm.getPassword();
		Customer cus = icdao.getCustomerByAccount(account);
		if(cus!=null&&cus.getPassword().equals(password)){
			request.setAttribute("msg", "��ӭ"+cus.getCname()+"��¼�ɹ�");
			return new ActionForward("/menu.jsp");
			
		}else{
			request.setAttribute("msg", "��¼ʧ��");
			return new ActionForward("/error.jsp");
		}
		
	}
}
