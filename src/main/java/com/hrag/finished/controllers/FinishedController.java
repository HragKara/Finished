package com.hrag.finished.controllers;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hrag.finished.models.Item;
import com.hrag.finished.models.Order;
import com.hrag.finished.models.Sell;
import com.hrag.finished.models.User;
import com.hrag.finished.service.FinishedService;

@Controller
public class FinishedController {
	
	private final FinishedService fService;
	
	public FinishedController(FinishedService fService) {
		this.fService = fService;
	}

	//Get Mappings
	
	@GetMapping("/")
	public String landingPage() {
		return "home/index.jsp";
	}
	
	@GetMapping("/registration")
	public String registerPage(@ModelAttribute("user")User user) {
		return "home/register.jsp";
	}
	
	@GetMapping("/dashboard/{id}")
	public String itemById(@PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("userId") != null) {
			User u = fService.findUserById((Long) session.getAttribute("userId"));
			model.addAttribute("user", u);

		}
		
		Item item = fService.findItem(id);
		List<Sell> listings = item.getLists();
		Sell four = fService.findSize(4, id);
		Sell fourHalf = fService.findSizeHalf(4.5, id);
		Sell five = fService.findSize(5, id);
		Sell fiveHalf = fService.findSizeHalf(5.5, id);
		Sell six = fService.findSize(6, id);
		Sell sixHalf = fService.findSizeHalf(6.5, id);
		Sell seven = fService.findSize(7, id);
		Sell sevenHalf = fService.findSizeHalf(7.5, id);
		Sell eight = fService.findSize(8, id);
		Sell eightHalf = fService.findSizeHalf(8.5, id);
		Sell nine = fService.findSize(9, id);
		Sell nineHalf = fService.findSizeHalf(9.5, id);
		Sell ten = fService.findSize(10, id);
		Sell tenHalf = fService.findSizeHalf(10.5, id);
		Sell eleven = fService.findSize(11, id);
		Sell elevenHalf = fService.findSizeHalf(11.5, id);
		Sell twelve = fService.findSize(12, id);
		Sell twelveHalf = fService.findSizeHalf(12.5, id);
		Sell thirteen = fService.findSize(13, id);
		Sell thirteenHalf = fService.findSizeHalf(13.5, id);
		Sell fourteen = fService.findSize(14, id);
		Sell lowest = fService.findLowest(id);
		model.addAttribute("lists", listings);
		model.addAttribute("item", item);
		model.addAttribute("lowest", lowest);
		
		model.addAttribute("four", four);
		model.addAttribute("fourHalf", fourHalf);
		model.addAttribute("five", five);
		model.addAttribute("fiveHalf", fiveHalf);
		model.addAttribute("six", six);
		model.addAttribute("sixHalf", sixHalf);
		model.addAttribute("seven", seven);
		model.addAttribute("sevenHalf", sevenHalf);
		model.addAttribute("eight", eight);
		model.addAttribute("eightHalf", eightHalf);
		model.addAttribute("nine", nine);
		model.addAttribute("nineHalf", nineHalf);
		model.addAttribute("ten", ten);
		model.addAttribute("tenHalf", tenHalf);
		model.addAttribute("eleven", eleven);
		model.addAttribute("elevenHalf", elevenHalf);
		model.addAttribute("twelve", twelve);
		model.addAttribute("twelveHalf", twelveHalf);
		model.addAttribute("thirteen",thirteen);
		model.addAttribute("thirteenHalf", thirteenHalf);
		model.addAttribute("fourteen", fourteen);
		return "dashboard/test.jsp";
	}
	
	@GetMapping("/checkout/{id}")
	public String checkout(@ModelAttribute("order")Order order, @PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/registration";
		}
		User u = fService.findUserById((Long) session.getAttribute("userId"));
		Sell buying = fService.findSell(id);
		Item item = buying.getItem();
		model.addAttribute("user", u);
		model.addAttribute("buying", buying);
		model.addAttribute("item", item);
		return "checkout/cart.jsp";
	}
	
	@GetMapping("/sell")
	public String sellItem() {
		
		return "dashboard/sell.jsp";
	}
	
	@GetMapping("/selling/{id}")
	public String sellWithId(@ModelAttribute("sell") Sell sell, HttpSession session, @PathVariable("id") Long id, Model model) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/registration";
		}
		User u = fService.findUserById((Long) session.getAttribute("userId"));
		Item item = fService.findItem(id);
		model.addAttribute("item", item);
		model.addAttribute("user", u);
		
		return "dashboard/selling.jsp";
	}
	
	@GetMapping("/dashboard")
	public String mainPage(HttpSession session, Model model) {
		if(session.getAttribute("userId") != null) {
			User u = fService.findUserById((Long) session.getAttribute("userId"));
			model.addAttribute("user", u);

		}
		List<Item> shoes = fService.findAllItems();
		
		model.addAttribute("shoes", shoes);
		

		return "dashboard/dashboard.jsp";
	}
	
	@GetMapping("/account")
	public String myAccount(HttpSession session, Model model) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/registration";
		}
		User u = fService.findUserById((Long) session.getAttribute("userId"));
		model.addAttribute("user", u);
		List<Order> orders = u.getOrders();
		List<Order> ordered = new ArrayList<Order>();
		for(Order bought: orders) {
			bought.getSold();
			ordered.add(bought);
		}
		
		model.addAttribute("ordered", ordered);
		
		return "home/account.jsp";
	}

	
	//Post Mappings
	@PostMapping("/create-listing")
	public String createListing(@ModelAttribute("sell") Sell sell, HttpSession session, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "redirect:/";
		}
		else {
			fService.addListing(sell);
			return "redirect:/dashboard";
		}
	}
	
	
	//Admin Get Mappings
	
	@GetMapping("/admin/item")
	public String addItem(@ModelAttribute("item")Item item) {
		return "admin/createItem.jsp";
	}
	
	
	//Admin Post Mappings
	
	@PostMapping("/create-item")
	public String createItem(@Valid @ModelAttribute("item") Item item, BindingResult result, Model model) {	
		
		if(result.hasErrors()) {
			return "redirect:/";
		}
		else {
			fService.spawnItem(item);
			return "redirect:/admin/item";
		}
	}
	
	@PostMapping("/buy-listing/{id}")
	public String buyItem(@Valid @ModelAttribute("order") Order order, @PathVariable("id") Long id, BindingResult result, Model model, HttpSession session) {
		if(result.hasErrors()) {
			return "redirect:/";
		}
		else {
			Sell sell = fService.findById(id);
			sell.setSold(true);
			fService.buyAndLink(order);
			return "redirect:/account";
		}
	}
	
	
	
	
	
	// ******************	Login and Registration Stuff ***************** //
	
		@PostMapping("/register")
		public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session, Model model) {
			
			if(result.hasErrors()) {
				return "home/register.jsp";
			}
			boolean isDuplicate = fService.duplicateUser(user.getEmail());
			
			
			if(isDuplicate) {
				model.addAttribute("error", "* Email already in use");
				return "home/register.jsp";
			}
			User u = fService.registerUser(user);
			session.setAttribute("userId", u.getId());
			return "redirect:/dashboard";
		
		}
			
		
		@PostMapping("/login")
		public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
			boolean isAuthenticated = fService.authenticateUser(email, password);
			if(isAuthenticated) {
				User u = fService.findByEmail(email);
				session.setAttribute("userId", u.getId());
				return "redirect:/dashboard";
			}
			else {
				
				model.addAttribute("login", "* Email/Password Incorrect");
				return "home/register.jsp";
			}
		}
		
		@RequestMapping("/logout")
	    public String logout(HttpSession session) {
			session.invalidate();
			return "redirect:/registration";
	    }
		
		
		
}
