package com.infosys.movieSystem.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.infosys.movieSystem.bean.TicketBooking;

@Service
@Repository
public class TicketBookingDaoImpl implements TicketBookingDao{
	@Autowired
	private TicketBookingRepository repository;
	
	@Override
	public void save(TicketBooking ticketBooking) {
		repository.save(ticketBooking);
	}
	
	@Override
	public List<TicketBooking> findAll(){
		 return repository.findAll();
    }

	@Override
	public TicketBooking getTicket(Long ticketId) {
	    return repository.findById(ticketId).orElse(null); // Already simple and straightforward
	}

	@Override
	public Long generateId() {
	    return (repository.getLastId() == null ? 1 : repository.getLastId() + 1); 
	}
	
	@Override
	public void delete(Long ticketId) {
	    repository.deleteById(ticketId); 
	}
	
	@Override
	public Optional<TicketBooking> getTicket1(Long ticketId) {
		
		return repository.getTicket1(ticketId);
	}

}
