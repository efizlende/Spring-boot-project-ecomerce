package com.Erspringproject.ErSpringProject.models;


import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Cartt {
	 public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<CartItem> getItems() {
		return items;
	}

	public void setItems(List<CartItem> items) {
		this.items = items;
	}

	@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, orphanRemoval = true)
	    private List<CartItem> items = new ArrayList<>();


	    public void addItem(CartItem item) {
	        items.add(item);
	        item.setCart(this);
	    }

	    public void removeItem(CartItem item) {
	        items.remove(item);
	        item.setCart(null);
	    }
	}

