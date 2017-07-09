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
import com.ws.model.User;
import com.ws.service.AddFriendInfoService;


@Controller
@RequestMapping(value="/addFriendInfo")
public class AddFriendInfoController {

	@Autowired
	private AddFriendInfoService addFriendInfoService;
	
	@Autowired
	private HttpSession session;
	
	//返回添加好友通知
	@RequestMapping(value="/info")
	  public ModelAndView hello(Model model, HttpServletRequest request){
			User user=(User)session.getAttribute("user");
			List<Addfriendinfo> addfriendinfos=addFriendInfoService.selectById(user.getId());
			JSONArray jsonArray=JSONArray.fromObject(addfriendinfos);
			return new ModelAndView("MyJsp","s",jsonArray.toString());
	  }
	
}
