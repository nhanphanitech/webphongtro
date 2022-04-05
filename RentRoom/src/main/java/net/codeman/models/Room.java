package net.codeman.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name= "room")
public class Room {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idroom;
	private double price;
	private String acreage;
	private boolean allow;
	private String detail;
	
	

	public Room() {
	}

	public Room(long idroom, double price, String acreage, boolean allow, String detail) {
		this.idroom = idroom;
		this.price = price;
		this.acreage = acreage;
		this.allow = allow;
		this.detail = detail;
	}

	public long getIdroom() {
		return idroom;
	}

	public void setIdroom(long idroom) {
		this.idroom = idroom;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAcreage() {
		return acreage;
	}

	public void setAcreage(String acreage) {
		this.acreage = acreage;
	}

	public boolean isAllow() {
		return allow;
	}

	public void setAllow(boolean allow) {
		this.allow = allow;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
}
