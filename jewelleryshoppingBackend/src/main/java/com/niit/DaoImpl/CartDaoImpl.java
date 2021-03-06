package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.CartDao;
import com.niit.Model.Cart;

@SuppressWarnings("deprecation")
@Repository("CartDaoImpl")
public class CartDaoImpl implements CartDao{
	@Autowired
	SessionFactory sessionFactory;
	public CartDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public void insertCart(Cart cart) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
		
	}
	@SuppressWarnings("unchecked")
	public List<Cart> findCartById(String userId) {
		Session session=sessionFactory.openSession();
		List<Cart> cr=null;
		try{
		session.beginTransaction();
		cr=(List<Cart>)session.createQuery("from Cart Where userMailId=:email").setString("email",userId);
		session.getTransaction().commit();
		
	}
		catch(HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		return cr;
		
		}
	
	public Cart getCartById(int cartId, String userEmail) {
		Session session=sessionFactory.openSession();
		Cart cr=null;
		session.beginTransaction();
		cr=(Cart)session.createQuery("from Cart where UserMailId=:email and cartProductID:id").setString("email",userEmail).setInteger("id",cartId).uniqueResult();
		session.getTransaction().commit();
		return cr;
	}
	
	public void deleteCart(int cartId) {
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Cart cr=(Cart)session.get(Cart.class,cartId);
		session.delete(cr);
		session.getTransaction().commit();
	}

	public void update(Cart cr) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(cr);
		session.getTransaction().commit();
		
	}
	

}
