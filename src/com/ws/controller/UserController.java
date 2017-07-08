package com.ws.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;




import com.ws.model.Friend;
import com.ws.model.User;
import com.ws.service.FriendService;
import com.ws.service.UserService;


@Controller
@SessionAttributes("username")
@RequestMapping(value="/user")
public class UserController {
	public String s;
	
	//  自动注入
	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpSession session;
	//登录功能
	@RequestMapping(value="/hello")
	  public ModelAndView hello(String username,String password, Model model, HttpServletRequest request){
	      User user=userService.login(username, password);
	      if(user!=null){
	    	  session.setAttribute("user", user);
	    	  s="true"; 
	      }else{
	    	  s="false"; 
	      }       
	      return new ModelAndView("MyJsp","s",s);
	  }
	
}
