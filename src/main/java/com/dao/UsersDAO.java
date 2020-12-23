package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.UsersEntity;

@Repository
public class UsersDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional(readOnly = true)
	public List<UsersEntity> listUsers(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "from users";
		List<UsersEntity> list = session.createQuery(hql).getResultList();
		return list;
	}
	
	@Transactional
	public void save(UsersEntity user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	}
	
	@Transactional(readOnly = true)
	public UsersEntity userById(int id) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from users where id = "+id;
		UsersEntity users = (UsersEntity) session.createQuery(hql).getSingleResult();
		return users;
	}
	
	@Transactional
	public void deleteUser(UsersEntity user) {
		Session session= sessionFactory.getCurrentSession();
		session.delete(user);
	}
	
	@Transactional
	public void updateUser(UsersEntity user) {
		Session session= sessionFactory.getCurrentSession();
		session.update(user);
	}
	
	@Transactional
	public boolean register(UsersEntity user) {
		System.out.println(user);
		Session session = sessionFactory.getCurrentSession();
		session.save(user);
	    int id = (Integer) session.save(user);
		if(id > 0){
			return true;
		}else{
			return false;
		}
	}
}
