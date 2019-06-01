package idao;
import po.Customer;
public interface ICustomerDao {
	public Customer getCustomerByAccount(String account);
}
