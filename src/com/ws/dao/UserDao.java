package com.ws.dao;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.ws.mapper.UserMapper;
import com.ws.model.User;
import com.ws.model.UserExample;

@Repository
public class UserDao implements UserMapper{
	
	// bean∂‘œÛ 	
	private UserMapper mapper;

	public  UserDao() {
		Dao<UserMapper> dao =new Dao<UserMapper>("userMapper");
		mapper=dao.getMapper();
	}
	

	@Override
	public User selectByPrimaryKey(String o) {
		// TODO Auto-generated method 
		return mapper.selectByPrimaryKey(o);
	}
	
	@Override
	public List<User> selectByExample(UserExample example) {
		// TODO Auto-generated method 
		return mapper.selectByExample(example);
	}


	@Override
	public int countByExample(UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int deleteByExample(UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByExampleSelective(User record, UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByExample(User record, UserExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return 0;
	}
}
