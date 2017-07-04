package com.ws.dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ws.mapper.UserMapper;

public class Dao<T> {
	T t;
	public  Dao(String s) {
		ApplicationContext applicationContext;
		applicationContext = new ClassPathXmlApplicationContext("classpath:com/confi/beans.xml");
		t=(T)applicationContext.getBean(s);
	}
	public T getMapper(){
		return t;
	}
	
}
