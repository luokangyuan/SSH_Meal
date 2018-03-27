package com.luo.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.luo.biz.ChildeBiz;
import com.luo.biz.MealMofangBiz;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class ShowMealMofangAction extends ActionSupport implements RequestAware {
	@Resource MealMofangBiz mBiz;
	public String showMealMofang()throws Exception{
		List mealmoList = mBiz.getAllMealMofang();
		request.put("mealmoList", mealmoList);
		return "showMealMofang";
	}
	Map<String, Object>request;
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
}
