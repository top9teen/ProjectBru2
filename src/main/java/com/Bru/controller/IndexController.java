package com.Bru.controller;

import javax.servlet.http.HttpServletRequest;

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
	@RequestMapping(value = "/gotologin")
	public String login(String email, String password, HttpServletRequest request) {
		String page = "";
		LoginBean bean = new LoginBean();
		LoginBeanSimple beansim = new LoginBeanSimple();
		beansim.setEmail(email);
		beansim.setPassword(password);
		try {
			bean = loginDao.login(beansim);
			if (bean.getLoEmail() != null) {
				if (bean.getLoStatus().equals("1")) {
				
					page = "admin/welcome";
				} else if (bean.getLoStatus().equals("2")) {
					
					page = "member/welcome";
				
				}


			} else {
				
				page = "index";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return page;
	}
	@RequestMapping(value="/signup")
	public String signup() {
		
		return "signup";
	}
	
	// face book
	@RequestMapping(value = "/facebook")
	public String facebook( String regid, HttpServletRequest request) {
		System.out.println(regid);
		String page = "";
		LoginBean bean = new LoginBean();
		LoginBeanSimple beansim = new LoginBeanSimple();
		beansim.setEmail(regid);
		
		try {
			bean = loginDao.loginfas(beansim);
			if (bean.getLoEmail() != null) {
				if (bean.getLoStatus().equals("1")) {
				
					page = "admin/welcome";
				} else if (bean.getLoStatus().equals("2")) {
				
					page = "member/welcome";
					
				}


			} else if(bean.getLoEmail() == null) {
				loginDao.registerfas(beansim);
				bean = loginDao.loginfas(beansim);
				if (bean.getLoStatus().equals("1")) {
				
					page = "admin/welcome";
				} else if (bean.getLoStatus().equals("2")) {
					
					page = "member/welcome";
					
				}else if (bean.getLoStatus().equals("3")) {
					
					page = "index";
					
				}
				
				page = "index";
			}else {
				
				page = "index";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return page;
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
