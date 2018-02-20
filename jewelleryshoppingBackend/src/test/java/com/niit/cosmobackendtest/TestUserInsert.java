package com.niit.cosmobackendtest;

import org.junit.BeforeClass;
import org.junit.Test;


import com.niit.Dao.UserDao;

import com.niit.DaoImpl.UserDaoImpl;
import com.niit.Model.User;
import com.niit.config.HibernateConfig;

public class TestUserInsert {

	
	private static HibernateConfig config;
	private static UserDao userDao;
	
	@BeforeClass
	public static void setUp(){
		config = new HibernateConfig();
		userDao = new UserDaoImpl(config.getSessionFac(config.getH2Data()));
	}
	
	@Test
	public void testInsertUser(){
		User user  = new User();
		user.setFname("nayan");
		user.setLname("prajapati");
		user.setEmail("nayan123@gmail.com");
		user.setContact("99898898");
		user.setDob("08/10/1994");
		user.setAddr("surat");
		user.setPass("1234");
		user.setRole("user");
		user.setEnabled(true);
		
		
		userDao.insertUser(user);
	}
	
}
