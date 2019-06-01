package dao;

import java.util.List;

import org.hibernate.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import idao.IResDao;
import po.Res;

public class ResDao implements IResDao{
	public List getResByName(String name){
		Session session = util.HibernateSessionFactory.getSession();
		String hql = "select resid,resname,resprice from Res where resname like'%"+name+"%'";
		Query query = session.createQuery(hql);
		List list = query.list();
		util.HibernateSessionFactory.closeSession();
		return list;
	}
	public List showAllRes(){
		Session session = util.HibernateSessionFactory.getSession();
		String hql = "select resid,resname,resprice from Res where resprice>0";
		Query query = session.createQuery(hql);
		List list = query.list();
		util.HibernateSessionFactory.closeSession();
		return list;
	}
	public void AddRes(String resid,String resname,String resprice) {
		Session session = util.HibernateSessionFactory.getSession();
		Res res = new Res();
		res.setResid(resid);
		res.setResname(resname);
		res.setResprice(resprice);
		Transaction tran = session.beginTransaction();
		session.save(res);
		tran.commit();
		
		util.HibernateSessionFactory.closeSession();
		
	}
	public void deleteRes(String resid){
		Session session = util.HibernateSessionFactory.getSession();
		Res res = (Res)session.get(Res.class, resid);
		
		Transaction tran = session.beginTransaction();
		session.delete(res);
		tran.commit();
		util.HibernateSessionFactory.closeSession();
	}
}
