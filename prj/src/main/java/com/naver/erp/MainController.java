package com.naver.erp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@Autowired
	private MainDAO mainDAO;
	
	@RequestMapping( value="/adminMain.do")
	public ModelAndView adminMain(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminMain.jsp");
		return mav;
	}
	
	@RequestMapping( value="/stuList.do")
	public ModelAndView stuList(
	){
		Map<String, Object> stuListMap = getStuListMap();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("stuList.jsp");
	      mav.addObject("stuListMap", stuListMap);
		return mav;}

	   public Map<String, Object> getStuListMap() {
		 Map<String, Object> resultMap = new HashMap<String, Object>();
		 List<Map<String, String>> stuList; 
		 
		 
		 stuList = this.mainDAO.getStuList();
		 
		 resultMap.put("stuList", stuList); 

		 return resultMap; 
		 }
	   
	   @RequestMapping( value="/teaList.do")
		public ModelAndView teaList(
		){
			Map<String, Object> teaListMap = getTeaListMap();
			ModelAndView mav = new ModelAndView();
			mav.setViewName("teaList.jsp");
		      mav.addObject("teaListMap", teaListMap);
			return mav;}

		   public Map<String, Object> getTeaListMap() {
			 Map<String, Object> resultMap = new HashMap<String, Object>();
			 List<Map<String, String>> teaList; 
			 
			 
			 teaList = this.mainDAO.getTeaList();
			 
			 resultMap.put("teaList", teaList); 

			 return resultMap; 
			 }
		   
		   
		   @RequestMapping( value="/classList.do")
			public ModelAndView classList(
			){
				Map<String, Object> classListMap = getClassListMap();
				ModelAndView mav = new ModelAndView();
				mav.setViewName("classList.jsp");
			      mav.addObject("classListMap", classListMap);
				return mav;}

			   public Map<String, Object> getClassListMap() {
				 Map<String, Object> resultMap = new HashMap<String, Object>();
				 List<Map<String, String>> classList; 
				 
				 
				 classList = this.mainDAO.getClassList();
				 
				 resultMap.put("classList", classList); 

				 return resultMap; 
				 }
	
	@RequestMapping( value="/registStu.do")
	public ModelAndView registStu(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("registStu.jsp");
		return mav;}
	
	@RequestMapping( value="/registTea.do")
		public ModelAndView registTea(
				){
					ModelAndView mav = new ModelAndView();
					mav.setViewName("registTea.jsp");
					return mav;}
	
	@RequestMapping( value="/registClass.do")
	public ModelAndView registClass( 
			){
				ModelAndView mav = new ModelAndView();
				mav.setViewName("registClass.jsp");
				return mav;}
	
	@RequestMapping( value="/gyeoljaeRegForm.do")
	public ModelAndView gyeoljaeRegForm( 
			){
				ModelAndView mav = new ModelAndView();
				mav.setViewName("gyeoljaeRegForm.jsp");
				return mav;}
	
	@RequestMapping( value="/dayOff.do")
	   public ModelAndView dayoffForm(){
		
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("dayOff.jsp");
	      return mav;}
}


