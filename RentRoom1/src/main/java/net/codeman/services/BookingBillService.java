package net.codeman.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codeman.models.BookingBill;
import net.codeman.repositories.BookingBillRepository;

@Service
@Transactional
public class BookingBillService {
	@Autowired BookingBillRepository repo;
	
	public List<BookingBill> listAll() {
		List<BookingBill> listBookingBill = new ArrayList<BookingBill>(); 
		listBookingBill = (List<BookingBill>) repo.findAll();
		return listBookingBill;
	}
	
	public void save(BookingBill bookingbill) {
		repo.save(bookingbill);
	}
		
	public List<BookingBill> listBillByDate(String datein) {
		List<BookingBill> listbill = new ArrayList<BookingBill>();
		for (BookingBill item : (List<BookingBill>) repo.findAll()) {
			if((item.getDate().compareTo(datein)) == 0) {
				listbill.add(item);
			}
		}
		return listbill;
	}
	
	public boolean listBillById(long idacc, long idroom){
		for (BookingBill item : (List<BookingBill>) repo.findAll()) {
			if(item.getIdacc() == idacc && item.getIdroom() == idroom) {
				return false;
			}
		}
		return true;
	}
	
	public boolean acceptBill(long id){
		for (BookingBill item : (List<BookingBill>) repo.findAll()) {
			if(item.getId() == id) {
				item.setAllow(true);
				return true;
			}
		}
		return false;
	}
}
