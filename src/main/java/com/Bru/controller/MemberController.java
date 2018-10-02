package com.Bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Bru.Bean.FormregiterBean;
import com.Bru.Bean.LoginBean;
import com.Bru.Bean.LoginBeanSimple;
import com.Bru.Bean.MiradoBean;

import com.Bru.Bean.YearCarBean;
import com.Bru.Dao.FormReDao;
import com.Bru.Dao.LoginDao;
import com.Bru.Dao.ProvinceDao;

@Controller
public class MemberController {

	@Autowired
	FormReDao formReDao;
	@Autowired
	LoginDao loginDao ;
	@Autowired
	ProvinceDao provinceDao;
	
	String email1 ;
	
	@RequestMapping(value="/page1")
	public String index() {
		
		return "member/page1";
	}
	@RequestMapping(value="/index2")
	public String bbbb() {
		
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
					email1 = bean.getLoEmail();
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
						email1 = bean.getLoEmail();
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
		
		
		@RequestMapping(value = "/gotobank")
		public String gotocredit(String groupType, String carMake, String carMake2, String lessmoney, String lessyear,
				HttpServletRequest request, Model model, String mos) throws SQLException {
			
			YearCarBean yebean = new YearCarBean();
			MiradoBean mibean = new MiradoBean();
			mibean.setGroupType(groupType);
			mibean.setCarMake2(carMake2);
			
		
			int bos = Integer.valueOf(mos);

			FormregiterBean bean = new FormregiterBean();
			bean.setFoCarMake2(carMake2);
			bean.setFoGroupType(groupType);
			bean.setFoCarMake(carMake);
			bean.setFoLessmoney(lessmoney);
			bean.setFoLessyear(lessyear);
			bean.setFoReMonny(bos);
			yebean = provinceDao.yrbean(lessyear);
		
			request.getSession().setAttribute("yebean", yebean);
			request.getSession().setAttribute("mibean", mibean);
			request.getSession().setAttribute("bean", bean);
			return "member/SelBank";
		}

		@RequestMapping(value = "/gotoreg")
		public String gotobank(HttpServletRequest request, Model model, String typebank,String car2 ,String car,String grop,String lessmon,String lessyre,int remon) {
			
			FormregiterBean bean = new FormregiterBean();
			bean.setFoCarMake(car);
			bean.setFoCarMake2(car2);
			bean.setFoGroupType(grop);
			bean.setFoLessmoney(lessmon);
			bean.setFoLessyear(lessyre);
			bean.setFoEmail(email1);
			bean.setFoTypebank(typebank);
			bean.setFoReMonny(remon);
		

			request.getSession().setAttribute("bean", bean);

			return "member/CreditForm";

		}

		@RequestMapping(value = "/gotopage2")
		public String test1() {
			return "member/welcome";
		}
		// sel dataTable1
		@RequestMapping(value = "/page2")
		public String page2(HttpServletRequest request) throws SQLException {
			List<FormregiterBean> list = new ArrayList<>();
			email1 ="top@top.com";
			list=formReDao.selre(email1);
			
			request.getSession().setAttribute("list2", list);
			return "member/page2";
		}
	// end class 
}
