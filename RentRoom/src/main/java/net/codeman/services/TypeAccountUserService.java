package net.codeman.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codeman.models.TypeAccountUser;
import net.codeman.repositories.TypeAccountUserRepository;

@Service
@Transactional
public class TypeAccountUserService {
	@Autowired TypeAccountUserRepository repo;
	
	public List<TypeAccountUser> listAll() {
		List<TypeAccountUser> listTypeAccountUser = new ArrayList<TypeAccountUser>(); 
		listTypeAccountUser = (List<TypeAccountUser>) repo.findAll();
		return listTypeAccountUser;
	}
	
	public TypeAccountUser getTypeById(long idtype) {
		TypeAccountUser typeacc = new TypeAccountUser();
		for (TypeAccountUser item : (List<TypeAccountUser>) repo.findAll()) {
			if(item.getIdtype() == idtype) {
				typeacc = item; break;
			}
		}
		return typeacc;
	}
	
}
