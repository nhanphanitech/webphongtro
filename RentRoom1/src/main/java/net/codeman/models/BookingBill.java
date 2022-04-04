package net.codeman.models;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "bookingbill")
public class BookingBill {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private long idacc;
	private long idroom;
	private long idtype;
	private String date;
	private double deposit;
	private boolean allow;
	
	public BookingBill(long id, long idacc, long idroom, long idtype, String date, double deposit, boolean allow) {
		super();
		this.id = id;
		this.idacc = idacc;
		this.idroom = idroom;
		this.idtype = idtype;
		this.date = date;
		this.deposit = deposit;
		this.allow = allow;
	}

	public BookingBill() {

	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getIdacc() {
		return idacc;
	}

	public void setIdacc(long idacc) {
		this.idacc = idacc;
	}

	public long getIdroom() {
		return idroom;
	}

	public void setIdroom(long idroom) {
		this.idroom = idroom;
	}

	public long getIdtype() {
		return idtype;
	}

	public void setIdtype(long idtype) {
		this.idtype = idtype;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public double getDeposit() {
		return deposit;
	}

	public void setDeposit(double deposit) {
		this.deposit = deposit;
	} 	 

	public boolean isAllow() {
		return allow;
	}

	public void setAllow(boolean allow) {
		this.allow = allow;
	}
	
}
