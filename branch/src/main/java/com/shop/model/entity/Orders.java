package com.shop.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Orders {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderid;
	private int cartid;
	private String mailid;
	private int shipid;
	public Orders() {
	}
	public Orders(int orderid, int cartid, String mailid, int shipid) 
			 {
		super();
		this.orderid = orderid;
		this.cartid = cartid;
		this.mailid = mailid;
		this.shipid = shipid;
			 }
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int cartid) {
		this.cartid = cartid;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public int getShipid() {
		return shipid;
	}
	public void setShipid(int shipid) {
		this.shipid = shipid;
	}
	
}
