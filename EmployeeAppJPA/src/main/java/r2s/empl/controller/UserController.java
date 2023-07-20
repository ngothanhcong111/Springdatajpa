package r2s.empl.controller;



import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import r2s.empl.entity.User;
import r2s.empl.repository.UserRepository;
import r2s.empl.services.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
		
	@PostMapping("/user")
	public String insertUser(@ModelAttribute("user") User user) {
	   boolean isResult = userService.addUser(user) ? true : false;
	   
	   if (isResult) {
		   
		   return "redirect:/login";
	   }
	   
	   return "redirect:/register";
	}
	
	@GetMapping("/register")
	public String newUser(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "register";
	}
	
	/*@PostMapping("/updateUser")
	public String updateUser(Model model ,@ModelAttribute("username") User user) {
		userService.save(user);
		return "form-account";
	}
	*/

	
	@PostMapping("/home")
	public String checkLogin(Model model, @RequestParam("username") String username, @RequestParam("password") String password, HttpSession session){
		
		
		String massage = "UserName or password failed";
		if(userService.checkLogin(username, password)) 
		{	
			session.setAttribute("username", username);
			return "redirect:/thebrand";
		} else {
			model.addAttribute("massage" ,massage);
		}
			return "login";
		
	}
	@GetMapping("/acount")
	public String information(Model model) {
		List<User> listUser = userService.getAllUsers();
		model.addAttribute("listUser",listUser);
		
		return "acount";
	}
	
	/*@GetMapping("/delete/{username}")
	public String showAndDelete(@PathVariable("username") String usename, Model model) {
		model.addAttribute("acount" , userService.findAll());
		return "register";
	}*/
	
	@GetMapping("/delete/{username}")
	public String deleteUser(@RequestParam("username") String username, Model model) {
		userService.deleteById(username);
		return "redirect:/thebrand";
	}
	
	@GetMapping("/acount/edit/{username}")
	public String editUser(String username, Model model) {
		User optional = userService.getUserById(username).get();
		model.addAttribute("user", optional);
		return "form-account";
	}
	
	/*@RequestMapping("/update/{username}")
	public String update(ModelMap model ,@PathVariable(name="username") String username) {
		Optional<User> u = userService.finxById(username);
		if(u.isPresent()) {
			model.addAttribute("USER" ,u.get());
		}else { 
			model.addAttribute("USER", new User());
		}
		
		model.addAttribute("USER", u);
		model.addAttribute("ACTION","/updateUser");
		return "form-account";
		*/
		
	
	@GetMapping("/acount/edit/save")
	public 	String afterUpdate( @RequestParam("username") String username, Model model , User user) {
			User update = userService.getUserById(username).get();
			update.setFirstName(user.getFirstName());
			update.setLastName(user.getLastName());
			update.setBirthDay(user.getBirthDay());
			update.setEmail(user.getEmail());
			update.setGender(user.isGender());
			update.setPhone(user.getPhone());
			update.setPassword(user.getPassword());
			userService.save(update);
			model.addAttribute("listUser",update);
			return "redirect:/acount";
	}
	
	
}
		
			
	


