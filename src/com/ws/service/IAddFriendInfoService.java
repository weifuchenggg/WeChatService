package com.ws.service;

import java.util.List;

import com.ws.model.Addfriendinfo;

public interface IAddFriendInfoService {
	public List<Addfriendinfo> selectById(int id);
}
