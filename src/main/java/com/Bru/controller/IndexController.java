package com.Bru.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Bru.Bean.LoginBean;
import com.Bru.Bean.LoginBeanSimple;
import com.Bru.Dao.LoginDao;



@Controller
public class IndexController {
	
	@Autowired
	LoginDao loginDao ;
	
	@RequestMapping(value="/")
	public String index() {
		
		return "index";
	}
		@RequestMapping(value="/xx")
		public String test1() {
			
			return "member/welcome";
	}
	
	@RequestMapping(value="/signup")
	public String signup() {
		
		return "signup";
	}
	
	
	@RequestMapping(value="/gotoregister")
	public String register(String email , String password,Model model) {
		LoginBeanSimple beansim = new LoginBeanSimple();
		beansim.setEmail(email);
		beansim.setPassword(password);
		LoginBean bean =new LoginBean();
		try {
			bean=loginDao.login(beansim);
			
			if (bean.getLoEmail() == null) {
				loginDao.register(beansim);
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "index";
	}
	// end class 
}
