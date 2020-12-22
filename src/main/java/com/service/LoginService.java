package com.service;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDAO;
import com.entities.UsersEntity;

@Service
public class LoginService {
	@Autowired
	UsersDAO userDAO;
	
	public boolean checkLogin(UsersEntity user) {
		boolean check = false;
		String pass = "";
		try {
			pass = convertPass(user.getPassWord());
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		for(UsersEntity users : userDAO.listUsers()) {
			if(user.getUserName().equals(users.getUserName()) & pass.equals(users.getPassWord())) {
				check = true;
				break;
			}
		}
		return check;
	}
	
	public boolean register(String username, String password, String email) {
		String converPass = "";
		try {
			converPass = convertPass(password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		UsersEntity user = new UsersEntity(username, converPass, email);
		return userDAO.register(user);
	}
	
	//	https://itphutran.com/ma-hoa-md5-trong-java/
		public String convertPass(String str) throws NoSuchAlgorithmException {
		String result = "";
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("MD5");
			digest.update(str.getBytes());
			BigInteger bigInteger = new BigInteger(1,digest.digest());
			result = bigInteger.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;
	}
}
