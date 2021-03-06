package com.Bru.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Bru.Bean.FormregiterBean;
import com.Bru.Bean.GatherBean;
import com.Bru.Bean.LoginBean;
import com.Bru.Bean.ReceiptBean;

import com.Bru.Dao.LoginDao;
import com.Bru.Dao.SelTableDao;
import com.Bru.Dao.TransferDao;

@Controller
public class AdminController {
	
	@Autowired
	LoginDao loginDao ;
	@Autowired
	SelTableDao selTableDao;
	@Autowired
	TransferDao  transferDao;
	
	@RequestMapping(value = "/listuser")
	public String listuser(Model model ,HttpServletRequest request ) throws SQLException {
	List<LoginBean> list  = new ArrayList<>();
   list = loginDao.login22();
 request.getSession().setAttribute("list", list);
		return "admin/customerlist";
	}
	@RequestMapping(value = "/listproduck")
	public String listproduck(HttpServletRequest requst) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		list = selTableDao.selrell();
		
		requst.getSession().setAttribute("listUser", list);

		return "admin/listproduck";
	}
	
	@RequestMapping(value = "/transfer")
	public String transfer(HttpServletRequest requst) throws SQLException {
		List<ReceiptBean> list  = new ArrayList<>();
		
		list = transferDao.Trens();
		requst.getSession().setAttribute("list", list);
			
		return "admin/Transferhistory";
	}
	@RequestMapping(value = "/productadmin")
	public String page2(HttpServletRequest request) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		
		list=selTableDao.selre();
		
		request.getSession().setAttribute("list2", list);
		return "admin/productadmin";
	}
	@RequestMapping(value = "/productadmin2")
	public String page22(HttpServletRequest request) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		
		list=selTableDao.selre2();
		
		request.getSession().setAttribute("list2", list);
		return "admin/productadmin2";
	}
	@RequestMapping(value = "/productadmin3")
	public String page3(HttpServletRequest request) throws SQLException, ParseException {
		List<GatherBean> list = new ArrayList<>();

		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date today = sdf.parse("14/11/2018");
		Calendar cal = Calendar.getInstance();
		today = new Date();
		cal.setTime(today);
		int M = 0, D = 0;
		M = cal.get(Calendar.MONTH);
		D = cal.get(Calendar.DATE);
		
	
		list = selTableDao.branddd(M + 1);

		request.getSession().setAttribute("list", list);
		
		
		return "admin/productadmin3";
	}
	// end class
}
