package com.Bru.controller;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.Bru.Bean.AmphurBean;
import com.Bru.Bean.BrandBean;
import com.Bru.Bean.CarBean;
import com.Bru.Bean.CriteriaBean;
import com.Bru.Bean.DistrictBean;
import com.Bru.Bean.FormregiterBean;
import com.Bru.Bean.FormregiterBean2;
import com.Bru.Bean.IdFormReBean;
import com.Bru.Bean.ProvinceBean;
import com.Bru.Bean.ReceiptBean;
import com.Bru.Bean.SimpleTestBean;
import com.Bru.Bean.YearBean;
import com.Bru.Dao.CkDao;
import com.Bru.Dao.FormRegisterDao;
import com.Bru.Dao.ProvinceDao;
import com.Bru.Dao.SearchCarDao;
import com.Bru.Bean.FormMemBean;


@RestController
public class SearchCarController {

	
	@Autowired
	SearchCarDao searchCarDao;
	@Autowired
	ProvinceDao provinceDao;
	@Autowired
	FormRegisterDao formRegisterDao;
	@Autowired
	CkDao ckDao;

	@RequestMapping(value="/year")
	public List<YearBean> xxx() throws SQLException{
		List<YearBean> list = new ArrayList<YearBean>();
	
		list =searchCarDao.findAll();
		return list;
	}
	
	@RequestMapping(value="/brand", method = RequestMethod.POST)
	public List<CarBean> brand(@RequestBody CriteriaBean criteriaBean) throws SQLException{
		
		List<CarBean> list = new ArrayList<>();
		
//		query master data
	/*	for(int i=0; i<10; i++) {
			bean = new BrandBean();
			bean.setCarId(i);
			bean.setCarName("Top"+i);
			
			list.add(bean);
		}
		
		*/
		list  = searchCarDao.findAll(criteriaBean.getYear());
		return list;
	}
	
	@RequestMapping(value="/carmodel", method = RequestMethod.POST)
	public List<BrandBean> carmodel(@RequestBody CriteriaBean criteriaBean) throws SQLException{
		
		List<BrandBean> list = new ArrayList<>();

		list  = searchCarDao.findAll(criteriaBean.getYear(), criteriaBean.getBrand());
		return list;
	}
	

	@RequestMapping(value = "/province")
	public List<ProvinceBean> province() throws SQLException {
		List<ProvinceBean> list = new ArrayList<ProvinceBean>();

		list = provinceDao.findallProvince();
		return list;
	}

	@RequestMapping(value = "/amphur", method = RequestMethod.POST)
	public List<AmphurBean> amphur(@RequestBody CriteriaBean criteriaBean) throws SQLException {

		List<AmphurBean> list2 = new ArrayList<>();
		list2 = provinceDao.findAllaumhur(criteriaBean.getXxx());
		return list2;
	}

	@RequestMapping(value = "/district", method = RequestMethod.POST)
	public List<DistrictBean> district(@RequestBody CriteriaBean criteriaBean) throws SQLException {

		List<DistrictBean> list2 = new ArrayList<>();
		list2 = provinceDao.findAlldistrict(criteriaBean.getXxx());
		return list2;
	}

	@RequestMapping(value = "/Tran", method = RequestMethod.POST)
	public ReceiptBean bean22(@RequestBody SimpleTestBean simpleTestBean) throws SQLException {

		ReceiptBean bean = new ReceiptBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());
		bean = provinceDao.tran(x);

		return bean;
	}
	@RequestMapping(value = "/bank2333", method = RequestMethod.POST)
	public String bank2(@RequestBody FormregiterBean2 formregiterBean2) throws SQLException {
		FormregiterBean nos = new FormregiterBean();
		String ae ="";
		IdFormReBean bean2 = new IdFormReBean();
		nos.setFoDate(new Date());
		AmphurBean amp = new AmphurBean();
		ProvinceBean pro = new ProvinceBean();
		DistrictBean dis = new DistrictBean();
		
		int a = Integer.valueOf(formregiterBean2.getFoAmphur());
		int b =Integer.valueOf(formregiterBean2.getFoProvince());
		int c =Integer.valueOf(formregiterBean2.getFoDistrict());
		amp = ckDao.amphur(a);
		pro = ckDao.province(b);
		dis = ckDao.dis(c);
		formregiterBean2.setFoAmphur(amp.getAmphurName());
		formregiterBean2.setFoProvince(pro.getProvinceName());
		formregiterBean2.setFoDistrict(dis.getDistrictName());
		formRegisterDao.formRegister(formregiterBean2,nos);
		if (formregiterBean2.getFoRadio().equals("1")) {
		
			bean2 = formRegisterDao.idform(formregiterBean2);
			ae = String.valueOf(bean2.getFoId());
			formregiterBean2.setMeId(bean2.getFoId());
			formRegisterDao.formRegisterff(formregiterBean2);
		} else {
			
		}
return ae ;
	}
	@RequestMapping(value="/FFF", method = RequestMethod.POST)
	public FormregiterBean bean2212(@RequestBody SimpleTestBean simpleTestBean) throws SQLException{
		
		FormregiterBean bean = new FormregiterBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());

		bean  = formRegisterDao.vvvv(x);
		return bean;
	}
	@RequestMapping(value="/MFD", method = RequestMethod.POST)
	public FormMemBean bean22ss(@RequestBody SimpleTestBean simpleTestBean) throws SQLException{
		
		FormMemBean bean = new FormMemBean();
		Integer x = Integer.valueOf(simpleTestBean.getXxx());

		bean  = formRegisterDao.vvvv2(x);
		return bean;
	}
// end class  
}

