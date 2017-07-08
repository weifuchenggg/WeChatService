package com.ws.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;



import com.ws.model.User;
import com.ws.model.UserExample;

public interface IUserService {
	public User login(String userName,String passWord);
	public List<User> selectById(int id);
}
