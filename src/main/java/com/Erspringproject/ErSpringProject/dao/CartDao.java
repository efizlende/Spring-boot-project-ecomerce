package com.Erspringproject.ErSpringProject.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.Erspringproject.ErSpringProject.models.Cartt;

@Repository
public class CartDao {
	 @Autowired
	    private SessionFactory sessionFactory;

	    public void setSessionFactory(SessionFactory sf) {
	        this.sessionFactory = sf;
	    }

	    @Transactional
	    public Cartt getCart(Long id) {
	        return this.sessionFactory.getCurrentSession().get(Cartt.class, id);
	    }

	    @Transactional
	    public Cartt saveCart(Cartt cart) {
	        this.sessionFactory.getCurrentSession().saveOrUpdate(cart);
	        return cart;
	    }

	    @Transactional
	    public void deleteCart(Long id) {
	        Session session = this.sessionFactory.getCurrentSession();
	        Cartt cart = session.byId(Cartt.class).load(id);
	        session.delete(cart);
	    }
	}

