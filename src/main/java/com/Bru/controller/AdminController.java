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
	// end class
}
