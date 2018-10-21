package com.Bru.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.Bru.Dao.FormRegisterDao;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;



import com.Bru.Bean.FormregiterBean;
import com.Bru.Bean.GatherBean;
import com.Bru.Bean.LoginBean;
import com.Bru.Bean.LoginBeanSimple;
import com.Bru.Bean.MiradoBean;
import com.Bru.Bean.ReceiptBean;
import com.Bru.Bean.SimpleTestBean;
import com.Bru.Bean.YearCarBean;
import com.Bru.Dao.FormMonnyDao;
import com.Bru.Dao.FormReDao;
import com.Bru.Dao.LoginDao;
import com.Bru.Dao.ProvinceDao;
import com.Bru.Dao.TransferDao;
import com.Bru.config.PaypalPaymentIntent;
import com.Bru.config.PaypalPaymentMethod;
import com.Bru.service.PaypalService;
import com.Bru.util.URLUtils;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;


@Controller
public class MemberController {

	@Autowired
	FormRegisterDao formRegisterDao;
	@Autowired
	FormReDao formReDao;
	@Autowired
	LoginDao loginDao ;
	@Autowired
	ProvinceDao provinceDao;
	@Autowired
	TransferDao transferDao;
	String email1;
	@Autowired
	FormMonnyDao formMonnyDao;
	
	public static final String PAYPAL_SUCCESS_URL = "success";
	public static final String PAYPAL_CANCEL_URL = "cancel";

	private Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private PaypalService paypalService;
	
	@RequestMapping(value="/page1")
	public String index() {
		
		return "member/page1";
	}
	@RequestMapping(value="/index2")
	public String bbbb() {
		
		return "member/welcome";
	}  
	@RequestMapping(value="/indexadmin")
	public String indexadmin() {
		
		return "admin/welcome";
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
				if (bean.getLoStatus().equals("3")) {
					email1 = bean.getLoEmail();
					page = "admin/welcome";
				} else if (bean.getLoStatus().equals("2")) {
					email1 = bean.getLoEmail();
					page = "member/welcome";
				
				}
				else if (bean.getLoStatus().equals("1")) {
					email1 = bean.getLoEmail();
					page = "admin2/welcome";
				
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
					
						page = "admin2/welcome";
					} else if (bean.getLoStatus().equals("2")) {
						
						page = "member/welcome";
						
					}else if (bean.getLoStatus().equals("3")) {
						
						page = "admin/welcome";
						
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
		public String gotobank(HttpServletRequest request, Model model, String typebank,String car2 ,String car,String grop,String lessmon,String lessyre,int remon,String kabant2) {
			
			FormregiterBean bean = new FormregiterBean();
			bean.setFoCarMake(car);
			bean.setFoCarMake2(car2);
			bean.setFoGroupType(grop);
			bean.setFoLessmoney(lessmon);
			bean.setFoLessyear(lessyre);
			bean.setFoEmail(email1);
			bean.setFoTypebank(typebank);
			bean.setFoReMonny(remon);
			bean.setXxx(kabant2);

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
			
			list=formReDao.selre(email1);
			
			request.getSession().setAttribute("list2", list);
			return "member/page2";
		}
		@RequestMapping(value = "/page22")
		public String page22(HttpServletRequest request) throws SQLException {
			List<FormregiterBean> list = new ArrayList<>();
			
			list=formReDao.selre2(email1);
			
			request.getSession().setAttribute("list2", list);
			return "member/page22";
		}
		@RequestMapping(value = "/page3")
		public String page3(HttpServletRequest request) throws SQLException, ParseException {
			List<GatherBean> list = new ArrayList<>();
			
			String email = email1;
			DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Date today = sdf.parse("14/11/2018");
			Calendar cal = Calendar.getInstance();
			today = new Date();
			cal.setTime(today);
			int M = 0, D = 0;
			M = cal.get(Calendar.MONTH);
			D = cal.get(Calendar.DATE);
			SimpleTestBean bean = new SimpleTestBean();
		
		
			bean.setEmail(email1);
			list = formMonnyDao.branddd(email, M + 1, D);

			request.getSession().setAttribute("list", list);
			
			request.getSession().setAttribute("bean",bean );
			return "member/page3";
		}
		
		@RequestMapping(value = "/repassword")
		public String repassword(Model model){
			
				model.addAttribute("re", "");
			
			
			return "member/page4";
		}
		
		@RequestMapping(value = "/refass")
		public String refass(Model model,String newpass,String repassed ) throws SQLException{
			LoginBean bean = new LoginBean();
			LoginBeanSimple beansim = new LoginBeanSimple();
			beansim.setEmail(email1);
			beansim.setPassword(repassed);
			try {
				bean = loginDao.login(beansim);
		
				if (bean.getLoPassword() != null) {
					 loginDao.sssser21(email1,newpass);
				
					model.addAttribute("re", "L");
				}else if(bean.getLoPassword() == null) {
					model.addAttribute("re", "F");
				}
					
				
			
			} catch (Exception e) {
				e.printStackTrace();
			}

			return "member/page4";
		}
		@RequestMapping(value = "/Transfer")
		public String Transfer(HttpServletRequest requst) throws SQLException {
				List<ReceiptBean> list = new ArrayList<>();
			list = transferDao.Trensasda(email1);
			requst.getSession().setAttribute("list", list);
			return "member/Transfer";
		}
		public int BosTERS;
		//pay
		// paypal
		@RequestMapping(value = "/pay")
		public String MBS(HttpServletRequest request, int regid) throws SQLException {
			String cancelUrl = URLUtils.getBaseURl(request) + "/" + PAYPAL_CANCEL_URL;
			String successUrl = URLUtils.getBaseURl(request) + "/" + PAYPAL_SUCCESS_URL;
			BosTERS = regid;
			GatherBean bean = new GatherBean();
			bean = formMonnyDao.vss(regid);

			try {
				int a = bean.getGaPrie();
				Payment payment = paypalService.createPayment(a + .00, "USD", PaypalPaymentMethod.paypal,
						PaypalPaymentIntent.sale, "payment description", cancelUrl, successUrl);
				for (Links links : payment.getLinks()) {
					if (links.getRel().equals("approval_url")) {
						return "redirect:" + links.getHref();
					}
				}
			} catch (PayPalRESTException e) {
				log.error(e.getMessage());
			}
			return "redirect:/";
		}

		@RequestMapping(method = RequestMethod.GET, value = PAYPAL_CANCEL_URL)
		public String cancelPay(HttpServletRequest request) throws ParseException, SQLException {
			List<GatherBean> list = new ArrayList<>();
			String email = email1;
			DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Date today = sdf.parse("14/11/2018");
			Calendar cal = Calendar.getInstance();
			today = new Date();
			cal.setTime(today);
			int M = 0, D = 0 ;
			
			M = cal.get(Calendar.MONTH);
			D = cal.get(Calendar.DATE);
			list = formMonnyDao.branddd(email, M + 1, D);

			request.getSession().setAttribute("list", list);
			return "member/page3";
		}

		// ทำต่อ
		@RequestMapping(method = RequestMethod.GET, value = PAYPAL_SUCCESS_URL)
		public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId,
				HttpServletRequest request) throws SQLException, ParseException {
			GatherBean bean = new GatherBean();
			ReceiptBean cev = new ReceiptBean();
			FormregiterBean rebean = new FormregiterBean();
			int a = 0, m = 0, n = 0, p = 0;
			List<GatherBean> list = new ArrayList<>();
			String email = email1;
			DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Date today = sdf.parse("14/11/2018");
			Calendar cal = Calendar.getInstance();
			today = new Date();
			cal.setTime(today);
			int M = 0, D = 0, Y = 0;
			M = cal.get(Calendar.MONTH);
			D = cal.get(Calendar.DATE);
			Y = cal.get(Calendar.YEAR);
			
			bean = formMonnyDao.vss(BosTERS);
			a = bean.getGaId();
			m = M + 2;
			n = Y;
			p = bean.getGaFistPeriod() - 1;
			String Mo[] = { "มกราคม", "กุมภาพันธ์", "มีนาคม", "เมษายน", "พฤษภาคม", "มิถุนายน", "กรกฎาคม", "สิงหาคม",
					"กันยายน", "ตุลาคม", "พฤศจิกายน", "ธันวาคม" };

			rebean = formRegisterDao.vvvv(bean.getGaUser());
			cev.setReAdmin("แอดมินเว็บไซต์");
			cev.setReBank("กสิกร");
			cev.setReDay(D);
			cev.setReMont(Mo[M]);
			cev.setReEmail(bean.getGaEmail());
			cev.setReIdga(bean.getGaId());
			String vp = String.valueOf(bean.getGaPrie());
			cev.setReMonny(vp);
			cev.setReName(rebean.getFoFNameTH()+"        " + rebean.getFoLNameTH());
			cev.setReYrar(n);
			cev.setReCar(rebean.getFoCarMake());
			cev.setReCaryear(rebean.getFoGroupType());
			cev.setReCarmodel(rebean.getFoCarMake2());
			try {
				Payment payment = paypalService.executePayment(paymentId, payerId);
				formMonnyDao.sot(m, n, a, p);
				formMonnyDao.msaw(cev);

				if (payment.getState().equals("approved")) {

				}
			} catch (PayPalRESTException e) {
				log.error(e.getMessage());
			}
			list = formMonnyDao.branddd(email, M + 1, D);
			request.getSession().setAttribute("list", list);
			return "member/page3";
		}
		// end paypal
		
		@RequestMapping(value = "/logout")
		public String logout(Model model) {
			
			
			return "index";
		}
	
	// end class    
}
