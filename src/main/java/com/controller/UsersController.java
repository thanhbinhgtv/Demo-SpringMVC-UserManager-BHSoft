package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UsersDAO;
import com.entities.UsersEntity;
import com.service.LoginService;
import com.service.UsersService;

@Controller
public class UsersController {
	@Autowired
	UsersService userService;
	@Autowired
	UsersDAO userDAO;
	@Autowired
	LoginController log;
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/home")
	public ModelAndView viewHome() {
		ModelAndView modelAndView = new ModelAndView("home/home");
		modelAndView.addObject("listUsers", userDAO.listUsers());
		return modelAndView;
	}
	
	@RequestMapping("/new-user")
	public ModelAndView viewNewUser() {
		ModelAndView modelAndView = new ModelAndView("home/newUser");
		return modelAndView;
	}
	
	@PostMapping("/save-user")
	public String saveNewUser(@RequestParam String username, String password, String email, String fullName, Integer yearOld,
			String address, String hobbies, String sex, String level, ModelMap map) {
		if(loginService.checkUserAlready(username)) {
			map.addAttribute("errorNew", "Username đã tồn tại");
			return "home/newUser";
		}else {
			userService.saveUser(username, password, email, fullName, yearOld, address, hobbies, sex, level);
			return "redirect:/home";
		}
	}
	
	@RequestMapping("/delete/{id}")
	public ModelAndView deleteUser(@PathVariable(name = "id") int id, HttpServletRequest request) {
		UsersEntity user = userDAO.userById(id);
		if(user.getUserName().equals(log.Username)){
			request.setAttribute("errorDelete", "Không thể xóa chính mình");
			return viewHome();
		}else {		
			userService.deleteUser(id);
			return viewHome();
		}
	}
	
	@RequestMapping("/updateUser/{id}")
	public ModelAndView viewUpdateUser(@PathVariable(name = "id") int id) {
		ModelAndView modelAndView = new ModelAndView("home/updateUser");
		UsersEntity user = userDAO.userById(id);
		modelAndView.addObject("listUser", user);
		return modelAndView;
	}
	@PostMapping("/update")
	public String updateUser(@RequestParam int id, String username, String password, String email, String fullName, Integer yearOld,
			String address, String hobbies, String sex, String level) {
		userService.updateUser(id, username, password, email, fullName, yearOld, address, hobbies, sex, level);
		return "redirect:/home";
	}
	@RequestMapping("/view/{id}")
	public ModelAndView viewUser(@PathVariable(name = "id") int id) {
		ModelAndView modelAndView = new ModelAndView("home/viewUser");
		UsersEntity user = userDAO.userById(id);
		modelAndView.addObject("listView", user);
		return modelAndView;
	}
	
}
