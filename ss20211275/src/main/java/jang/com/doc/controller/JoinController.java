package jang.com.doc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jang.com.doc.model.User;
import jang.com.doc.service.UserService;

@Controller
public class JoinController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public String toUserEntryView( Model model ) {
		model.addAttribute("user", new User());
		return "joinForm";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String onSubmit(@Valid User user, BindingResult result, Model model) throws Exception {
		if (result.hasErrors()) {
			model.addAttribute(result.getModel());
			return "joinForm";
		}
		if (this.userService.insertUser(user) != 0 ) {
			model.addAttribute("message", "다음과 같이 회원이 완료되었습니다.");
			model.addAttribute("user", user);
			return "joinSuccess";
		}
		else {
			model.addAttribute("errMsg", "회원가입이 완료되지 못하였습니다. 다시 시도하여 주십시오.");
			model.addAttribute(result.getModel());
			return "joinForm";
		}
		
	}
}
