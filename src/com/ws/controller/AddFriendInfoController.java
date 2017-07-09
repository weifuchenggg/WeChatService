package com.ws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ws.model.Addfriendinfo;
import com.ws.model.Friend;
import com.ws.model.User;
import com.ws.service.AddFriendInfoService;
import com.ws.service.FriendService;
import com.ws.service.UserService;


@Controller
@RequestMapping(value="/addFriendInfo")
public class AddFriendInfoController {

	@Autowired
	private AddFriendInfoService addFriendInfoService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FriendService friendService;
	
	@Autowired
	private HttpSession session;
	
	//返回添加好友通知
	@RequestMapping(value="/info")
	public ModelAndView info(Model model, HttpServletRequest request){
			User user=(User)session.getAttribute("user");
			List<Addfriendinfo> addfriendinfos=addFriendInfoService.selectById(user.getId());
			JSONArray jsonArray=JSONArray.fromObject(addfriendinfos);
			return new ModelAndView("MyJsp","s",jsonArray.toString());
	 }
	
	//同意添加好友功能
	@RequestMapping(value="/accept")
	public ModelAndView accept(int id,Model model, HttpServletRequest request){
			User user=(User)session.getAttribute("user");
			//更新添加好友 变成已同意
			Addfriendinfo addfriendinfo=addFriendInfoService.selectByPrimaryKey(id);
			addfriendinfo.setSign(true);
			addFriendInfoService.updateByPrimaryKey(addfriendinfo);
			
			//好友列表中添加好友
			Friend friend=new Friend();
			friend.setMyid(addfriendinfo.getMyid());
			friend.setFriendid(addfriendinfo.getFriendid());
			friend.setUsername(addfriendinfo.getFriendname());;
			friendService.insert(friend);
			
			friend.setMyid(addfriendinfo.getFriendid());
			friend.setFriendid(addfriendinfo.getMyid());
			friend.setUsername(user.getUsername());
			friendService.insert(friend);
			
			return new ModelAndView("MyJsp","s",addfriendinfo);
	 }
	  
	
	
}
