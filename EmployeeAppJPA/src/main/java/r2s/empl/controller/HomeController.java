package r2s.empl.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1b;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import antlr.collections.List;
import r2s.empl.services.UserService;

@Controller
public class HomeController {
	
	@GetMapping("/login")
	public String checkLogin() {
		return "login";
	}
	
	@GetMapping("/thebrand")
		public String TheBrand(){
		return "thebrand";
	
	}
	@GetMapping("/home")
	public String home() {
		return "home-page";
	}
	
	@GetMapping("/form-account")
	public String formAccount() {
		return"form-account";
	}

}
