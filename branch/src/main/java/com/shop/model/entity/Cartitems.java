package com.shop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Cartitems {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartitemid;
	private int quantity;
	private int totalprice;
	private int cartid;
	private int productid;

	public Cartitems() {
	}
	public Cartitems(int cartitemid, int quantity, int totalprice, int cartid, int productid) 
	 {
super();
this.cartitemid = cartitemid;
this.quantity = quantity;
this.cartid = cartid;
this.totalprice = totalprice;
this.productid = productid;
	 }
	public int getCartitemid() {
		return cartitemid;
	}
	public void setCartitemid(int cartitemid) {
		this.cartitemid = cartitemid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}

}
