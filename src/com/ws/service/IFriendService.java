package com.ws.service;

import java.util.List;

import com.ws.model.Friend;
import com.ws.model.User;

public interface IFriendService {
	public List<Friend> selectById(int id);
	public void insert(Friend friend);
}
