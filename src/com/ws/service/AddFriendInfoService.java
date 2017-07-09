package com.ws.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ws.mapper.AddfriendinfoMapper;
import com.ws.model.Addfriendinfo;
import com.ws.model.AddfriendinfoExample;
import com.ws.model.AddfriendinfoExample.Criteria;
import com.ws.model.AddfriendinfoExample.Criterion;

@Service
public class AddFriendInfoService implements IAddFriendInfoService{

	@Autowired
	private AddfriendinfoMapper addfriendinfoMapper;
	
	@Override
	public List<Addfriendinfo> selectById(int id) {
		// TODO Auto-generated method stub
		AddfriendinfoExample example = new AddfriendinfoExample();
		Criteria criteria= example.createCriteria();
		criteria.andMyidEqualTo(id);
		criteria.andSignEqualTo(false);
		example.or(criteria);
		return addfriendinfoMapper.selectByExample(example);
	}

}
