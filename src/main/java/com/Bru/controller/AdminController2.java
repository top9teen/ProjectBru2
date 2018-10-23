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
import com.Bru.Bean.LoginBeanSimple;
import com.Bru.Bean.ReceiptBean;
import com.Bru.Dao.LoginDao;
import com.Bru.Dao.SelTableDao;
import com.Bru.Dao.TransferDao;

@Controller
public class AdminController2 {
	@Autowired
	LoginDao loginDao ;
	@Autowired
	SelTableDao selTableDao;
	@Autowired
	TransferDao  transferDao;
	
	@RequestMapping(value = "/listuser35")
	public String listuser(Model model ,HttpServletRequest request ) throws SQLException {
	List<LoginBean> list  = new ArrayList<>();
   list = loginDao.login22();
 request.getSession().setAttribute("list", list);
		return "admin2/customerlist";
	}
	@RequestMapping(value = "/listproduck35")
	public String listproduck(HttpServletRequest requst) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		list = selTableDao.selrell();
		
		requst.getSession().setAttribute("listUser", list);

		return "admin2/listproduck";
	}
	
	@RequestMapping(value = "/transfer35")
	public String transfer(HttpServletRequest requst) throws SQLException {
		List<ReceiptBean> list  = new ArrayList<>();
		
		list = transferDao.Trens();
		requst.getSession().setAttribute("list", list);
			
		return "admin2/Transferhistory";
	}
	@RequestMapping(value = "/productadmin35")
	public String page2(HttpServletRequest request) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		
		list=selTableDao.selre();
		
		request.getSession().setAttribute("list2", list);
		return "admin2/productadmin";
	}
	@RequestMapping(value = "/productadmin235")
	public String page22(HttpServletRequest request) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		
		list=selTableDao.selre2();
		
		request.getSession().setAttribute("list2", list);
		return "admin2/productadmin2";
	}
	@RequestMapping(value = "/productadmin335")
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
		
		
		return "admin2/productadmin3";
	}
	@RequestMapping(value = "/addadmin35")
	public String addadmin(Model model) throws SQLException {
		model.addAttribute("re", "");
		return "admin2/page4";
	}
	@RequestMapping(value = "/addAdmin235")
	public String refass(Model model,String repassed,String newpass ) throws SQLException{
		LoginBean bean = new LoginBean();
		LoginBeanSimple beansim = new LoginBeanSimple();
		beansim.setEmail(repassed);
		beansim.setPassword(newpass);
		try {
			bean = loginDao.login(beansim);
	
			if (bean.getLoEmail() == null) {
				 loginDao.registeradmin(beansim);
			
				model.addAttribute("re", "L");
			}else if(bean.getLoPassword() != null) {
				model.addAttribute("re", "G");
			}
			else {
				model.addAttribute("re", "F");
			}
				
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "admin2/page4";
	}
	
	
	// export 
	@RequestMapping(value = "/printuser")
	public String printuser(Model model ,HttpServletRequest request ) throws SQLException {
	List<LoginBean> list  = new ArrayList<>();
   list = loginDao.login22();
 request.getSession().setAttribute("list", list);
		return "admin2/printuser";
	}
	
	@RequestMapping(value = "/printproduct")
	public String printproduct(HttpServletRequest requst) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		list = selTableDao.selrell();
		
		requst.getSession().setAttribute("listUser", list);

		return "admin2/printallproduct";
	}
	@RequestMapping(value = "/printtran")
	public String printtran(HttpServletRequest requst) throws SQLException {
		List<ReceiptBean> list  = new ArrayList<>();
		
		list = transferDao.Trens();
		requst.getSession().setAttribute("list", list);
			
		return "admin2/printtran";
	}
	@RequestMapping(value = "/ckmo")
	public String ckmo(HttpServletRequest requst,String d1,String m1 ,String y1) throws SQLException {
		List<ReceiptBean> list  = new ArrayList<>();
		int n = Integer.valueOf(d1);
		int m = Integer.valueOf(y1);
		if(d1.equals("0") && m1.equals("0") && y1.equals("0")) {
			
		} else  {
			if(d1.equals("0") && m1.equals("0")) {
				list = transferDao.Trens3(m);	
			}else {
				if(d1.equals("0")&& y1.equals("0") ) {
					list = transferDao.Trens(m1);	
				}else {
					if(d1.equals("0")) {
						list = transferDao.Trens(m1,m);	
					}
					else {
						if(m1.equals("0") && y1.equals("0")) {
							list = transferDao.Trens(n);	
						}
						else {
							if(m1.equals("0")) {
								list = transferDao.Trens(n,m);	
							}
							else {
								if(y1.equals("0")) {
									list = transferDao.Trens(n,m1);
								}
							}
						}
					}
				}
			}
		}
		
		requst.getSession().setAttribute("list", list);
			
		return "admin2/printtran";
	}
	@RequestMapping(value = "/printpro")
	public String printpro(HttpServletRequest request) throws SQLException {
		List<FormregiterBean> list = new ArrayList<>();
		
		list=selTableDao.selre();
		
		request.getSession().setAttribute("list2", list);
		return "admin2/printpro";
	}
	// end class    
}
