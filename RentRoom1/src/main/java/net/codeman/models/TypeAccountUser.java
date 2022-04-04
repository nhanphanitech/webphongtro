package net.codeman.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "typeaccountuser")
public class TypeAccountUser {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long idtype;
	private String typename;
	
	public TypeAccountUser() {
	}
	
	public TypeAccountUser(long idtype, String typename) {
		this.idtype = idtype;
		this.typename = typename;
	}
	
	public long getIdtype() {
		return idtype;
	}
	
	public void setIdtype(long idtype) {
		this.idtype = idtype;
	}
	
	public String getTypename() {
		return typename;
	}
	
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
}
