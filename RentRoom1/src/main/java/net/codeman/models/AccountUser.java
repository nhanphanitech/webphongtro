package net.codeman.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "accountuser")
public class AccountUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idacc;
	private String name;
	private String phone;
	private String persionid;
	private String username;
	private String password;
	private boolean allow;
	private long idtype;
	
	public AccountUser() {
	}

	public AccountUser(long idacc, String name, String phone, String persionid, String username, String password,
			boolean allow, long idtype) {
		this.idacc = idacc;
		this.name = name;
		this.phone = phone;
		this.persionid = persionid;
		this.username = username;
		this.password = password;
		this.allow = allow;
		this.idtype = idtype;
	}

	public long getIdacc() {
		return idacc;
	}

	public void setIdacc(long idacc) {
		this.idacc = idacc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPersionid() {
		return persionid;
	}

	public void setPersionid(String persionid) {
		this.persionid = persionid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean getAllow() {
		return allow;
	}

	public boolean setAllow(boolean allow) {
		return this.allow = allow;
	}

	public long getIdtype() {
		return idtype;
	}

	public void setIdtype(long idtype) {
		this.idtype = idtype;
	}
	
	
	
	
	
}
