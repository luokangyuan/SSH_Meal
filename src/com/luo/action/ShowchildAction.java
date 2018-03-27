package com.luo.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;


import com.luo.biz.ChildeBiz;
import com.opensymphony.xwork2.ActionSupport;


@Controller
public class ShowchildAction  extends ActionSupport implements RequestAware {
	@Resource ChildeBiz childeBiz;
	public String showchild()throws Exception{
		List childList = childeBiz.getAllChildr();
		request.put("childList", childList);
		return "showchild";
	}
	Map<String, Object>request;
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

}
