package com.luo.Ajaxaction;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
public class ShowTimeAction extends ActionSupport implements SessionAware {
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String execute() throws Exception {
		long currentTime=System.currentTimeMillis();	//获取当前时间
		//获取开始时间
		Long startTime = (Long) session.get("startTime"); 
		if (startTime==null) {	//第一次访问
			startTime=currentTime;
			session.put("startTime", startTime);
		}
		long usedTime=(currentTime-startTime)/1000/60;	//以分钟秒计算访问的时间
		if (usedTime>60) {
			this.setMessage("您已经访问系统："+usedTime+" 分钟，请注意休息！");
		}else if (usedTime==0) {
			this.setMessage("您刚开始访问系统，祝您愉快！");
		}else{
			this.setMessage("您已经访问系统："+usedTime+"分钟。");
		}
		return super.execute();	//返回"success"字符串
	}	
   private Map session;
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

}
