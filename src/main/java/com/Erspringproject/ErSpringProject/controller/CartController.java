package com.Erspringproject.ErSpringProject.controller;
import com.Erspringproject.ErSpringProject.models.Cartt;
import com.Erspringproject.ErSpringProject.services.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cart")
public class CartController {
	 @Autowired
	    private CartService cartService;

	    @GetMapping("/{id}")
	    public Cartt getCart(@PathVariable Long id) {
	        return cartService.getCart(id);
	    }

	    @PostMapping("/{cartId}/add")
	    public Cartt addToCart(@PathVariable Long cartId, @RequestParam Integer productId, @RequestParam int quantity) {
	        return cartService.addToCart(cartId, productId, quantity);
	    }

	    @DeleteMapping("/{cartId}/remove")
	    public Cartt removeFromCart(@PathVariable Long cartId, @RequestParam Integer productId) {
	        return cartService.removeFromCart(cartId, productId);
	    }

	    @PostMapping("/{cartId}/clear")
	    public void clearCart(@PathVariable Long cartId) {
	        cartService.clearCart(cartId);
	    }
	}

