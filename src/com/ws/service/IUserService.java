package com.ws.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public interface IUserService {
	public Boolean login(String userName,String passWord);
}
