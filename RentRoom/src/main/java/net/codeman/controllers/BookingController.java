package net.codeman.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codeman.models.BookingBill;
import net.codeman.models.Room;
import net.codeman.services.BookingBillService;


@Controller
public class BookingController {
	@Autowired
	private BookingBillService BookingBillService;
		
	@RequestMapping("/bookingbill")
	public ModelAndView listBookingBill() {
		List<BookingBill> listBookingBill = new ArrayList<BookingBill>();
		for (BookingBill bookingBill : BookingBillService.listAll()) {
			if(bookingBill.isAllow() == false) {
				listBookingBill.add(bookingBill);
			}
		}
		ModelAndView mav = new ModelAndView("/admin/bookingbill");
		mav.addObject("listBookingBill", listBookingBill);
		return mav;
	}
	
	
	@RequestMapping("/bookingaccept")
	public ModelAndView listBookingAccept() {
		List<BookingBill> listBookingBill = new ArrayList<BookingBill>();
		for (BookingBill bookingBill : BookingBillService.listAll()) {
			if(bookingBill.isAllow() == true) {
				listBookingBill.add(bookingBill);
			}
		}
		ModelAndView mav = new ModelAndView("/admin/bookingbill");
		mav.addObject("listBookingBill", listBookingBill);
		return mav;
	}
	
	@RequestMapping(value = "/acceptbill", method = RequestMethod.GET)
	public String payForm( @RequestParam long id) {
		if(BookingBillService.acceptBill(id) == true) {
			return "redirect:/bookingbill";
		}
			
		return "redirect:/bookingbill";
	}
	
}
