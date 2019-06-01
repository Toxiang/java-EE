package dao;
import java.util.List;

import org.hibernate.*;

import idao.IOrderDao;
import po.Res;
import po.Order;

public class OrderDao implements IOrderDao{
	static String id = "1";
	public void Order_name(String resid) {
		Session session = util.HibernateSessionFactory.getSession();
		Res res = (Res)session.get(Res.class, resid);
		Order order = new Order();
		
		System.out.println(res.getResid());
		System.out.println(res.getResname());
		order.setOid(id);
		int i = Integer.parseInt(id)+1;
		id = String.valueOf(i);
		order.setName(res.getResname());
		order.setPrice(res.getResprice());
		order.setNum("1");
		Transaction tran = session.beginTransaction();
		session.save(order);
		System.out.println(id);
		tran.commit();
		util.HibernateSessionFactory.closeSession();
	}
	
	public List showAll_order(){
		Session session = util.HibernateSessionFactory.getSession();
		String hql = "select oid,name,price,num from Order";
		Query query = session.createQuery(hql);
		List list = query.list();
		util.HibernateSessionFactory.closeSession();
		return list;
	}
	public void cashOrder() {
		Session session = util.HibernateSessionFactory.getSession();
		String hql = "truncate table Order";
		session.createQuery(hql);
	}
	public void deleteOrder(String name){
		Session session = util.HibernateSessionFactory.getSession();
		Order ord = (Order)session.get(Order.class, name);
		
		Transaction tran = session.beginTransaction();
		session.delete(ord);
		tran.commit();
		util.HibernateSessionFactory.closeSession();
	}

}
