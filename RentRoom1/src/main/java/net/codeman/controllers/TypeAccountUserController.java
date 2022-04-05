package net.codeman.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codeman.models.Room;
import net.codeman.models.TypeAccountUser;
import net.codeman.services.TypeAccountUserService;

@Controller
public class TypeAccountUserController {
	@Autowired
	private TypeAccountUserService TypeAccountUserService;
		
	@RequestMapping("/typeaccountuser")
	public ModelAndView listTypeAccountUser() {
		List<TypeAccountUser> listTypeAccountUser = TypeAccountUserService.listAll();
		ModelAndView mav = new ModelAndView("/admin/typeaccountuser");
		mav.addObject("listTypeAccountUser", listTypeAccountUser);
		return mav;
	}
	
	@RequestMapping(value = "/edittypeaccount", method = RequestMethod.GET)
	public ModelAndView payForm( @RequestParam long idtype) {
			
		ModelAndView mavs = new ModelAndView("/admin/typeaccountedit");
		TypeAccountUser typeacc = TypeAccountUserService.getTypeById(idtype);
		System.out.println(typeacc.getTypename());
		mavs.addObject("typeaccountuser", typeacc);
		return mavs;
	}
}
