package dao;
import idao.ICustomerDao;
import org.hibernate.Session;
import po.Customer;
public class CustomerDao implements ICustomerDao{
	public Customer getCustomerByAccount(String account){
		Customer cus = null;
		Session session = util.HibernateSessionFactory.getSession();
		cus = (Customer)session.get(Customer.class, account);
		util.HibernateSessionFactory.closeSession();
		return cus;
	}
}
