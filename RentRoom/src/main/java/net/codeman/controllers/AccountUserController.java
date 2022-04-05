package net.codeman.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codeman.models.AccountUser;
import net.codeman.services.AccountUserService;




@Controller
public class AccountUserController {
	@Autowired
	private AccountUserService AccountUserService;
	
	@RequestMapping("/accountuser")
	public ModelAndView listAccountUser() {
		List<AccountUser> listaccountuser = new ArrayList<AccountUser>();
		for (AccountUser accountUser : AccountUserService.listAll()) {
			if(accountUser.getAllow() == true) {
				listaccountuser.add(accountUser);
			}
		}
		ModelAndView mav = new ModelAndView("/admin/accountuser");
		mav.addObject("listaccountuser", listaccountuser);
		return mav;
	}
	
	@RequestMapping("/accountblock")
	public ModelAndView listAccountUserBlock() {
		List<AccountUser> listaccountuser = new ArrayList<AccountUser>();
		for (AccountUser accountUser : AccountUserService.listAll()) {
			if(accountUser.getAllow() == false) {
				listaccountuser.add(accountUser);
			}
		}
		
		ModelAndView mav = new ModelAndView("/admin/accountuser");
		mav.addObject("listaccountuser", listaccountuser);
		return mav;
	}
	
	@RequestMapping("/blockaccount")
	public String blockAccount(@RequestParam long idacc) {
		AccountUser accountuser = new AccountUser();
		accountuser = AccountUserService.find(idacc);
		accountuser.setAllow(false);
		AccountUserService.save(accountuser);
		return "redirect:/accountuser";		
	}
	
	@RequestMapping("/unblockaccount")
	public String ubBlockAccount(@RequestParam long idacc) {
		AccountUser accountuser = new AccountUser();
		accountuser = AccountUserService.find(idacc);
		accountuser.setAllow(true);
		AccountUserService.save(accountuser);
		return "redirect:/accountuser";		
	}
	
	@RequestMapping("/delete")
	public String deleteAccount(@RequestParam long idacc) {
		AccountUserService.delete(idacc);
		return "redirect:/accountuser";		
	}
	
}
