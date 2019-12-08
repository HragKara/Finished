package com.hrag.finished.service;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import com.hrag.finished.models.Item;
import com.hrag.finished.models.Order;
import com.hrag.finished.models.Sell;
import com.hrag.finished.models.User;
import com.hrag.finished.repositories.ItemRepo;
import com.hrag.finished.repositories.OrderRepo;
import com.hrag.finished.repositories.SellRepo;
import com.hrag.finished.repositories.UserRepo;


@Service
public class FinishedService {
	private final UserRepo userRepo;
	private final ItemRepo itemRepo;
	private final OrderRepo orderRepo;
	private final SellRepo sellRepo;
	
	public FinishedService(UserRepo userRepo, ItemRepo itemRepo, OrderRepo orderRepo, SellRepo sellRepo) {
		this.itemRepo = itemRepo;
		this.orderRepo = orderRepo;
		this.userRepo = userRepo;
		this.sellRepo = sellRepo;
	}

	// register user and hash their password
    public User registerUser(User user) {
        String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashed);
        return userRepo.save(user);
    }
    
    // find user by email
    public User findByEmail(String email) {
        return userRepo.findByEmail(email);
    }
    
    // find user by id
    public User findUserById(Long id) {
    	Optional<User> u = userRepo.findById(id);
    	
    	if(u.isPresent()) {
            return u.get();
    	} else {
    	    return null;
    	}
    }
    
    // authenticate user
    public boolean authenticateUser(String email, String password) {
        // first find the user by email
        User user = userRepo.findByEmail(email);
        // if we can't find it by email, return false
        if(user == null) {
            return false;
        } else {
            // if the passwords match, return true, else, return false
            if(BCrypt.checkpw(password, user.getPassword())) {
                return true;
            } else {
                return false;
            }
        }
    }
    
    //Checks for duplicate Email
    public boolean duplicateUser(String email) {
        User user = userRepo.findByEmail(email);
        if(user == null) {
            return false;
        }
        else {
        	return true;
        }
    }
    
    public Sell findById(Long id) {
    	Optional<Sell> s = sellRepo.findById(id);
    	if(s.isPresent()) {
    		return s.get();
    	}
    	else {
    		return null;
    	}
    	
    }
    
    public Item findItem(Long id) {
    	Optional<Item> e = itemRepo.findById(id);
    	if(e.isPresent()) {
    		return e.get();
    	}
    	else {
    		return null;
    	}
    }
    
    public Sell findSell(Long id) {
    	Optional<Sell> i = sellRepo.findById(id);
    	if(i.isPresent()) {
    		return i.get();
    	}
    	else {
    		return null;
    	}
    }
    
    public List<Item> findItems(String query){
    	System.out.print(query);
    	return (List<Item>) itemRepo.findItems(query);
    }
    
    public List<Item> findAllItems(){
    	return (List<Item>) itemRepo.findAll();
    }
    
    public Sell findLowest(Long item_id){
    	return sellRepo.lowestPrice(item_id);
    }
    
    public Sell addListing(Sell selling) {
    	return sellRepo.save(selling);
    }
    
    public Sell findSize(int d, Long id) {
    	return sellRepo.findSize(d, id);
    }
    
    public Sell findSizeHalf(double size, Long id) {
    	return sellRepo.findSizeHalf(size, id);
    }
    //************* API SHIT ******************
    
    public Item spawnItem(Item item) {
    	
    	return itemRepo.save(item);
    	
    }
    
    public Order buyAndLink(Order order) {
    	return orderRepo.save(order);
    }
    
    
    
    
}
