package com.luo.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.luo.service.EmployeeService;
import com.opensymphony.xwork2.ActionContext;

@Controller
public class EmployeeAction {
	
	@Resource EmployeeService employeeService;
	 
	public String execute()  throws Exception {
		ActionContext.getContext().put("employees", employeeService.list());
		
		return "list1";

	}

}
