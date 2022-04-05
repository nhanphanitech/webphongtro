package net.codeman.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codeman.models.Room;
import net.codeman.repositories.RoomRepository;

@Service
@Transactional
public class RoomService {
	@Autowired RoomRepository repo;
	
	public List<Room> listAll() {
		List<Room> listRoom = new ArrayList<Room>(); 
		listRoom = (List<Room>) repo.findAll();
		return listRoom;
	}

	public void save(Room room) {
		repo.save(room);
	}
	
	public Room getByIdRoom(Long idroom) {
		return repo.findById(idroom).get();
	}
}
