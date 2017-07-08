package com.ws.service;

import java.util.List;



import org.objectweb.asm.xwork.tree.IntInsnNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ws.mapper.UserMapper;
import com.ws.model.User;
import com.ws.model.UserExample;
import com.ws.model.UserExample.Criteria;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User login(String userName, String passWord) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		Criteria criteria= example.createCriteria();
		criteria.andUsernameEqualTo(userName);
		criteria.andPasswrodEqualTo(passWord);
		example.or(criteria);
		List<User> users=userMapper.selectByExample(example);
		if(users.size()!=0) return users.get(0);
		return null;
	}

	@Override
	public List<User> selectById(int id) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		Criteria criteria=example.createCriteria();
		criteria.andIdEqualTo(id);
		example.or(criteria);
		return userMapper.selectByExample(example);
	}
	
	
}
