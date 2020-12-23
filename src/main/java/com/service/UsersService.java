package com.service;


import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDAO;
import com.entities.UsersEntity;

@Service
public class UsersService {
	@Autowired
	private UsersDAO userDao;
	@Autowired
	LoginService loginService;
	
	public void deleteUser(int id) {
		UsersEntity user = userDao.userById(id);
		userDao.deleteUser(user);
	}
	
	public void saveUser(String username, String password, String email, String fullName, Integer yearOld,
			String address, String hobbies, String sex, String level) {
			String converPass = "";
		try {
			converPass = loginService.convertPass(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		UsersEntity user = new UsersEntity();
		user.setUserName(username);
		user.setPassWord(converPass);
		user.setEmail(email);
		user.setFullName(fullName);
		user.setYearOld(yearOld);
		user.setAddress(address);
		user.setHobbies(hobbies);
		user.setSex(sex);
		user.setLevel(level);
		userDao.save(user);
	}
	
	public void updateUser(int id, String username, String password, String email, String fullName, Integer yearOld,
			String address, String hobbies, String sex, String level) {
			String converPass = "";
		try {
			converPass = loginService.convertPass(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		UsersEntity user = userDao.userById(id);
		user.setUserName(username);
		user.setPassWord(converPass);
		user.setEmail(email);
		user.setFullName(fullName);
		user.setYearOld(yearOld);
		user.setAddress(address);
		user.setHobbies(hobbies);
		user.setSex(sex);
		user.setLevel(level);
		userDao.updateUser(user);
	}
}
