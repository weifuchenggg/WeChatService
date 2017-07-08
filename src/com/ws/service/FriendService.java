package com.ws.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ws.mapper.FriendMapper;
import com.ws.model.Friend;
import com.ws.model.FriendExample;
import com.ws.model.FriendExample.Criteria;

@Service
public class FriendService implements IFriendService {

	@Autowired
	private FriendMapper friendMapper;
	
	@Override
	public List<Friend> selectById(int id) {
		// TODO Auto-generated method stub
		FriendExample example=new FriendExample();
		Criteria criteria=example.createCriteria();
		criteria.andMyidEqualTo(id);
		example.or(criteria);
		return friendMapper.selectByExample(example);
	}
	
}
