package jang.com.doc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jang.com.doc.model.User;
import jang.com.doc.service.UserService;



@Controller
public class Login_Controller {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String toLoginView(Model model) {
		
		model.addAttribute("user", new User());
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String onSubmit(@Valid User user, BindingResult result ,Model model) {
	    if (result.hasFieldErrors("id") || result.hasFieldErrors("pass")) {
	        model.addAllAttributes(result.getModel());
	        return "login"; 
	    }

	    try {
	        User loginUser = this.userService.getUser(user.getId());
	        
	    
	        if(user.getPass().equals(loginUser.getPass())) {
	            model.addAttribute("loginUser", loginUser);
	            return "loginSucess";
	        } else {

	            result.rejectValue("pass", "error.pass.user", "비밀번호 틀림");
	            model.addAllAttributes(result.getModel());
	            return "login";
	        }
	    } catch(EmptyResultDataAccessException e) {
	        result.rejectValue("id", "error.id.user", "아이디 틀림");
	        model.addAllAttributes(result.getModel());
	        return "login"; 
	    }
	}

}
