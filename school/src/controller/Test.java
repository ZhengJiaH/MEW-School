package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.UserPass;
import service.Service_select1Impl;

@Controller
@RequestMapping(value="/show")
public class Test {
	@Resource
	private Service_select1Impl service_select1Impl;
	@RequestMapping(value="/index",method=RequestMethod.POST)
	public String show(@RequestParam(value="user") String user
			,@RequestParam(value="pass") String pass
			,HttpServletRequest request
			,HttpServletResponse response
			,HttpSession sess) throws Exception {
		PrintWriter out=response.getWriter();
		List<UserPass> list=service_select1Impl.select1();
		//表单效验
		for(UserPass userpass:list) {
			if(userpass.getUsername().equals(user) && userpass.getPassword().equals(pass)) {
				sess.setAttribute("sess", userpass);
				return "choice";
			}
		}
		System.out.println(request.getContextPath());
		return "errey";
	}
	@RequestMapping(value="/admin")
	public ModelAndView admin(Model model) {
		ModelAndView mv=new ModelAndView();
		List<UserPass> list=service_select1Impl.select1();
		model.addAttribute("list", list);
		mv.setViewName("admin_00");
		return mv;
	}
	//退出
	@RequestMapping(value="/quit")
	public String quit(HttpSession session) {
		session.invalidate();
		return "errey2";
	}
}
