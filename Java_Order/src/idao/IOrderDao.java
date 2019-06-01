package idao;

import java.util.List;

public interface IOrderDao {
	public void Order_name(String resid);
	public List showAll_order();
	public void deleteOrder(String resid);
	public void cashOrder();
}
