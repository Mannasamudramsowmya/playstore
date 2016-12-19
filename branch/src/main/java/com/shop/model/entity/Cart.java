package com.shop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Cart {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cartid;
	private int date;
	private int grandtotal;
	private int quantity;
	private int time;
	private int productid;
	private int mailid;
	
	public Cart() {
	}
	public Cart(int cartid, int date, int grandtotal, int quantity, int time, int productid, int mailid) 
	 {
super();
this.cartid = cartid;
this.date = date;
this.grandtotal = grandtotal;
this.quantity = quantity;
this.time = time;
this.productid = productid;
this.mailid = mailid;
	 }
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public int getGrandtotal() {
		return grandtotal;
	}
	public void setGrandtotal(int grandtotal) {
		this.grandtotal = grandtotal;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public int getMailid() {
		return mailid;
	}
	public void setMailid(int mailid) {
		this.mailid = mailid;
	}

}
