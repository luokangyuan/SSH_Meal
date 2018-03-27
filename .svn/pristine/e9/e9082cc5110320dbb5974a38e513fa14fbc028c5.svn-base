package com.luo.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.springframework.stereotype.Controller;

import com.luo.biz.CharactBiz;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class ShowcharactAction extends ActionSupport implements RequestAware {
	@Resource CharactBiz charactBiz;
	/**
	 * 获取所有的各地特色
	 * @return
	 * @throws Exception
	 */
	public String Showcharact()throws Exception{
		List chartList = charactBiz.getAllChariac();
		request.put("chartList", chartList);
		return "Showcharact";
	}
	Map<String, Object>request;
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

}
