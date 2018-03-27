package com.luo.action;

import java.io.InputStream;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
public class DownAction extends ActionSupport {
	String  inputPath = "/download/Struts 2สตั้หฤ.doc";
	public InputStream getTagetFile()throws Exception{
		return ServletActionContext.getServletContext().getResourceAsStream(inputPath)
;	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}
