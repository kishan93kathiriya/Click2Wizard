package DAO;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.register_vo;
import signup.*;

public class register_dao {
	
	public void insert(register_vo v)
	{
		System.out.println("Hiiii");
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		try{
			session.save(v);
			tr.commit();
		}
		catch(Exception e){}
	}
	
	public List search(register_vo v){
		List<register_vo> ls=new ArrayList();
		try
		{
			System.out.println("1");
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			System.out.println("2");
			Session session = sessionFactory.openSession();
			System.out.println("3");
			
			System.out.println("Your Email Address id "+v.getEmail());
			Query q=session.createQuery("from register_vo where email='"+v.getEmail()+"'");
			
			
			
			ls=q.list();
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	
	}
	
	public void delete(register_vo v){
		try{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  Query q = session.createQuery("delete from user_data where id like'"+v.getId()+"'");
			  q.executeUpdate();
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}						
	}
	
	public void edit(register_vo v){
		try
		{
			  System.out.println("nnnnnnnnnnnnnnnnnnnnnnnnnnnn");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  Session session =sessionFactory.openSession();
			  Transaction tr = session.beginTransaction();
			  session.saveOrUpdate(v);
			  tr.commit();
		}
		catch(Exception e){}

	}
}
 	