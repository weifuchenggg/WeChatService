package com.ws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ws.model.Friend;
import com.ws.model.User;
import com.ws.service.FriendService;
import com.ws.service.UserService;

@Controller
@SessionAttributes("username")
@RequestMapping(value="/friend")
public class FriendController {

	public String s;
//  自动注入
	@Autowired
	private UserService userService;
	
	@Autowired
	private FriendService friendService;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	//返回好友列表
	@RequestMapping(value="/getFriend")
      public ModelAndView getFriend(){
          User user=(User)session.getAttribute("user");
          System.out.println(user);
          List<Friend> list=friendService.selectById(user.getId());
          for(Friend friend: list){
        	  System.out.println(friend);
          }
          JSONArray jsonArray = JSONArray.fromObject(list );  
          return new ModelAndView("MyJsp","s",s);
      }
}
