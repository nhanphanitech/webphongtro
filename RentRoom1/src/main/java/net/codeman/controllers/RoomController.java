package net.codeman.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codeman.models.AccountUser;
import net.codeman.models.BookingBill;
import net.codeman.models.Room;
import net.codeman.models.TypeAccountUser;
import net.codeman.services.AccountUserService;
import net.codeman.services.BookingBillService;
import net.codeman.services.RoomService;

@Controller
public class RoomController {
	@Autowired
	private RoomService RoomService;
	@Autowired
	private BookingBillService BookingBillService;
	@Autowired
	private AccountUserService AccountUserService;

	@RequestMapping("/room")
	public ModelAndView listRoom() {
		List<Room> listRoom = new ArrayList<Room>();
		for (Room room : RoomService.listAll()) {
			if(room.isAllow() == false) {
				listRoom.add(room);
			}
		}
		ModelAndView mav = new ModelAndView("/admin/room");
		mav.addObject("listRoom", listRoom);
		return mav;
	}
	
	@RequestMapping("/roomaccept")
	public ModelAndView listRoomAccept() {
		List<Room> listRoom = new ArrayList<Room>();
		for (Room room : RoomService.listAll()) {
			if(room.isAllow() == true) {
				listRoom.add(room);
			}
		}
		ModelAndView mav = new ModelAndView("/admin/room");
		mav.addObject("listRoom", listRoom);
		return mav;
	}
	

	@RequestMapping(value = "/editroom", method = RequestMethod.GET)
	public ModelAndView editRoom( @RequestParam long idroom) {
			
		ModelAndView mavs = new ModelAndView("/admin/roomedit");
		Room room = RoomService.getByIdRoom(idroom);
		mavs.addObject("room", room);
		return mavs;
	}
	
	@RequestMapping(value = "/saveroom", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("room") Room room) {
		Room roomdata = RoomService.getByIdRoom(room.getIdroom());
		roomdata.setPrice(room.getPrice());
		roomdata.setAcreage(room.getAcreage());
		roomdata.setDetail(room.getDetail());
		roomdata.setAllow(room.isAllow());
		RoomService.save(roomdata);
		return "redirect:/room";
	}
	
	@RequestMapping(value = "/bookinglist", method = RequestMethod.GET)
	public ModelAndView listBookingBill(@RequestParam long idacc) {
		List<BookingBill> listBookingBill = new ArrayList<BookingBill>();
		for (BookingBill item : BookingBillService.listAll()) {
			if(item.getIdacc() == idacc && item.isAllow() == false) listBookingBill.add(item);
		}
		ModelAndView mav = new ModelAndView("/home/bookinglist");
		mav.addObject("listBookingBill", listBookingBill);
		return mav;
	}
	
	@RequestMapping(value = "/bookinglistaccept", method = RequestMethod.GET)
	public ModelAndView listBookingBillAccept(@RequestParam long idacc) {
		List<BookingBill> listBookingBill = new ArrayList<BookingBill>();
		for (BookingBill item : BookingBillService.listAll()) {
			if(item.getIdacc() == idacc && item.isAllow() == true) listBookingBill.add(item);
		}
		ModelAndView mav = new ModelAndView("/home/bookinglistaccept");
		mav.addObject("listBookingBill", listBookingBill);
		return mav;
	}
	
	public static List<Room> listCartRoom = new ArrayList<Room>();
	
	@RequestMapping(value = "/detail",  method = RequestMethod.GET)
	public ModelAndView detailRoomForm(@RequestParam long idroom) {
		ModelAndView mavs = new ModelAndView("/home/detail");
		Room addroom = RoomService.getByIdRoom(idroom);
		mavs.addObject("room", addroom);
		return mavs;
	}

	@RequestMapping(value = "/cartform", method = RequestMethod.GET)
	public String cartForm(ModelMap model) {
		
		model.put("listRoom", listCartRoom);
		return "/home/cart";
	}
	
	@RequestMapping(value = "/addroom", method = RequestMethod.GET)
	public String cartRooom(ModelMap model, @RequestParam long idroom) {
		Room addroom = RoomService.getByIdRoom(idroom);
		int checkroom=0;
		for (Room item : listCartRoom) {
			if(item.getIdroom() == idroom){
					checkroom++; break;
			}
		}
		if(checkroom == 0) {
			listCartRoom.add(addroom);
		}
		model.put("listRoom", listCartRoom);
		return "/home/cart";
	}
	
	@RequestMapping(value = "/removeroom", method = RequestMethod.GET)
	public String removeRooom(ModelMap model,  @RequestParam long idroom) {
		for (Room item : listCartRoom) {
			if(item.getIdroom() == idroom){
				listCartRoom.remove(item);
				break;
			}
		}
		model.put("listRoom", listCartRoom);
		return "/home/cart";
	}
	
	@RequestMapping(value = "/payform", method = RequestMethod.GET)
	public ModelAndView payForm( @RequestParam long idroom) {
			
		ModelAndView mavs = new ModelAndView("/home/payment");
		Room payroom = RoomService.getByIdRoom(idroom);
		mavs.addObject("room", payroom);
			
		return mavs;
	}
		
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payMent(HttpSession session, @RequestParam long idroom) {
		
		AccountUser accountUserBooking = new AccountUser();
		long idacc = Long.parseLong(session.getAttribute("idaccount").toString());
		
		if(BookingBillService.listBillById(idacc, idroom) == true) {
			accountUserBooking = AccountUserService.find(idacc);
			
			Room roomBooking = new Room();
			roomBooking = RoomService.getByIdRoom(idroom);
			
			BookingBill bookingBillEntity = new BookingBill();
				
				bookingBillEntity.setIdacc(Long.parseLong(session.getAttribute("idaccount").toString()));
				bookingBillEntity.setIdroom(idroom);
				bookingBillEntity.setIdtype(accountUserBooking.getIdtype());
				bookingBillEntity.setDeposit(roomBooking.getPrice()/100*30);
				bookingBillEntity.setDate(java.time.LocalDate.now().toString());
				bookingBillEntity.setAllow(false);
			
			BookingBillService.save(bookingBillEntity);
			listCartRoom.remove(roomBooking);
		}else {
			return "/message/mspayment";
		}
		
		return "redirect:/";
	}
}
