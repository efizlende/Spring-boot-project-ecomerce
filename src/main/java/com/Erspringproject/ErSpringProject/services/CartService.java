package com.Erspringproject.ErSpringProject.services;
import com.Erspringproject.ErSpringProject.dao.CartDao;
import com.Erspringproject.ErSpringProject.dao.CartItemDao;
import com.Erspringproject.ErSpringProject.models.Cartt;
import com.Erspringproject.ErSpringProject.models.CartItem;
import com.Erspringproject.ErSpringProject.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	 @Autowired
	    private CartDao cartDao;

	    @Autowired
	    private CartItemDao cartItemDao;

	    @Autowired
	    private productService productService;

	    public Cartt getCart(Long id) {
	        return cartDao.getCart(id);
	    }

	    public Cartt addToCart(Long cartId, Integer productId, int quantity) {
	        Cartt cart = getCart(cartId);
	        Product product = productService.getProduct(productId);

	        if (product != null) {
	            CartItem cartItem = new CartItem();
	            cartItem.setProduct(product);
	            cartItem.setQuantity(quantity);
	            cartItemDao.saveCartItem(cartItem);
	            cart.addItem(cartItem);
	            cart = cartDao.saveCart(cart);
	        }

	        return cart;
	    }

	    public Cartt removeFromCart(Long cartId, Integer productId) {
	        Cartt cart = getCart(cartId);
	        cart.getItems().removeIf(item -> item.getProduct().getId() == productId.intValue());
	        return cartDao.saveCart(cart);
	    }


	    public void clearCart(Long cartId) {
	        Cartt cart = getCart(cartId);
	        cart.getItems().clear();
	        cartDao.saveCart(cart);
	    }
	}

