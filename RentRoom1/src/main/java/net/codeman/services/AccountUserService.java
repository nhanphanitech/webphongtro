package net.codeman.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codeman.models.AccountUser;
import net.codeman.repositories.AccountUserReponsitory;

@Service
@Transactional
public class AccountUserService {
	@Autowired AccountUserReponsitory repo;
	
	public List<AccountUser> listAll() {
		List<AccountUser> listAccountUser = new ArrayList<AccountUser>(); 
		listAccountUser = (List<AccountUser>) repo.findAll();
		return listAccountUser;
	}
	
	public AccountUser login(AccountUser accountUser) {
		
		for (AccountUser item : (List<AccountUser>) repo.findAll()) {
			if((accountUser.getUsername().compareTo(item.getUsername())) == 0) {
				if((accountUser.getPassword().compareTo(item.getPassword())) == 0) {
					return item;
				}
			}
		}
		return accountUser;
	}
	
	public AccountUser find(long idacc) {
		return repo.findById(idacc).get();
	}
	
	
	public void save(AccountUser accountuser) {
		repo.save(accountuser);
	}
	
	public void delete(long idacc) {
		repo.deleteById(idacc);
	}
	
}
