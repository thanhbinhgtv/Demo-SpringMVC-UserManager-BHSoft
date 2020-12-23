package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.entities.UsersEntity;
import com.service.LoginService;
import com.service.UsersService;

@Controller
public class LoginController {
	@Autowired
	UsersService userService;
	@Autowired
	LoginService loginService;
	@Autowired
	UsersController userController;
	public String Username;
	
	@RequestMapping("/")
	public ModelAndView viewLogin() {
		ModelAndView modelAndView = new ModelAndView("login/login");
		return modelAndView;
	}
	
	@RequestMapping("/register")
	public String viewRegister() {	
		return "login/register";
	}
	
	@PostMapping("/checkLogin")
	public ModelAndView checkLogin(HttpServletRequest request, Model modelMap , @RequestParam String username, String password) {
		
		if(username == "" || password == "") {
			modelMap.addAttribute("error", "Không được để trống Username hoặc Password");
			return viewLogin();
		}else {
			if(loginService.checkLogin(new UsersEntity(username, password))) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				Username = username; // Dùng cho method không xóa chính mình
				return userController.viewHome();
			}else {
				modelMap.addAttribute("error", "Sai Username Hoặc Password");
				return viewLogin();
			}
		}
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "redirect:/";
	}
	
	@PostMapping("/checkRegister")
	public String checkRegister(HttpServletRequest request, @RequestParam String username,
			 String email, String password, String repassword, ModelMap map) {
		if (!password.equals(repassword)) {
			map.addAttribute("error", "Mật Khẩu Không Trùng Khớp");
			return "login/register";
		}if(loginService.checkUserAlready(username)) {
			map.addAttribute("error", "Username đã tồn tại");
			return "login/register";
		}else {
			if (loginService.register(username, password, email)) {
				HttpSession session = request.getSession();
				session.setAttribute("user", username);
				return "redirect:/";
			}
			return "redirect:/";
		}
	}
}
