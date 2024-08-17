package com.Erspringproject.ErSpringProject.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.Erspringproject.ErSpringProject.models.CartItem;

@Repository
public class CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    @Transactional
    public CartItem saveCartItem(CartItem cartItem) {
        this.sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
        return cartItem;
    }

    @Transactional
    public void deleteCartItem(Long id) {
        Session session = this.sessionFactory.getCurrentSession();
        CartItem cartItem = session.byId(CartItem.class).load(id);
        session.delete(cartItem);
    }
}

