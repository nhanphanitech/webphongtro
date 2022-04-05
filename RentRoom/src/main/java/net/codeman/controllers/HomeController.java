package net.codeman.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codeman.models.AccountUser;
import net.codeman.models.BookingBill;
import net.codeman.models.Room;
import net.codeman.services.AccountUserService;
import net.codeman.services.BookingBillService;
import net.codeman.services.RoomService;

@Controller
public class HomeController {
	@Autowired
	private AccountUserService AccountUserService;
	@Autowired
	private RoomService RoomService;
	@Autowired
		
	@RequestMapping("/")
	public ModelAndView home(HttpSession session) {
		
		List<Room> listRoom = RoomService.listAll();
		ModelAndView mav = new ModelAndView("/home/homepage");
		mav.addObject("listRoom", listRoom);
		return mav;
	}
	
	
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginForm(Map<String, Object> model) {
		AccountUser accountuser = new AccountUser();
		model.put("accountuser", accountuser);
		return "home/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAccountUser(HttpSession session, @ModelAttribute("accountuser") AccountUser accountuser) {
		if(accountuser.getUsername() != null && accountuser.getPassword() != null) {
			AccountUser tempAccount = AccountUserService.login(accountuser);
			if(tempAccount.getAllow() == true && tempAccount.getPersionid().length() != 0){
				session.setAttribute("username", tempAccount.getUsername());
				session.setAttribute("idaccount", tempAccount.getIdacc());
				if(AccountUserService.login(accountuser).getIdtype() == 1) {
					return "admin/manager";
				}else {
					return "redirect:/";
				}
				
			}
		}
		
		
		return "home/login";
	}
	
	@RequestMapping(value = "/registerform", method = RequestMethod.GET)
	public String registerForm(Map<String, Object> model) {
		AccountUser accountuser = new AccountUser();
		model.put("accountuser", accountuser);
		return "home/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerAccountUser(HttpSession session, @ModelAttribute("accountuser") AccountUser accountuser) {
		System.out.println(accountuser.getUsername());
			if(accountuser.getUsername() != "" && accountuser.getPassword() != "") {
				accountuser.setIdtype(2);
				accountuser.setAllow(true);
				
				
				AccountUserService.save(accountuser);
			}else {
				return "home/register";
			}
			
		
		return "home/login";
	}
	
	
	
		
		
	
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("username");
		session.removeAttribute("idaccount");
		return "redirect:/";
	}
}
