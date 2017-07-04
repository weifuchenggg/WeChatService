package com.ws.service;

import java.util.List;









import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ws.dao.UserDao;
import com.ws.mapper.UserMapper;
import com.ws.model.User;
import com.ws.model.UserExample;
import com.ws.model.UserExample.Criteria;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserMapper userMapper;
	 

	@Override
	public Boolean login(String userName, String passWord) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		Criteria criteria= example.createCriteria();
		criteria.andUsernameEqualTo(userName);
		criteria.andPasswrodEqualTo(passWord);
		example.or(criteria);
		List<User> users=userMapper.selectByExample(example);
		if(users.size() !=0)
			System.out.println(users.get(0));
		if(users.size()!=0) return true;
		return false;
	}
	
	
}
