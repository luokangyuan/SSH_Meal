package com.luo.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.luo.biz.AdminBiz;
import com.luo.entity.Pager;
import com.luo.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class AdminAction extends ActionSupport implements RequestAware,
		SessionAware {

	@Resource
	AdminBiz adminBiz;
	private int rowcount;

	public int getRowcount() {
		return rowcount;
	}

	public void setRowcount(int rowcount) {
		this.rowcount = rowcount;
	}
	private Users users;//封装页面参数
	
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	private int updateId;//封装超链接传递的参数
	

	public int getUpdateId() {
		return updateId;
	}

	public void setUpdateId(int updateId) {
		this.updateId = updateId;
	}
	private Pager pager;// 封装分页参数

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	/**
	 * 分页查询用户信息
	 * 
	 * @return
	 * @throws Exception
	 */
	public String usermanager() throws Exception {
		int curPage = 1;
		rowcount = adminBiz.getUserCount();
		int pagercount = (rowcount + 9 - 1) / 9;
		request.put("rowcount", pagercount);

		if (pager != null) {
			curPage = pager.getCurPage();
		}
		List userlist = adminBiz.pageuser(curPage, 9);
		request.put("userlist", userlist);
		session.put("userlist", userlist);
		return "success";
	}
	/**
	 * 处理修改用户信息，先获取对应的用户信息，再转到修改页面
	 * @return
	 * @throws Exception
	 */
	public String toUpdateUser()throws Exception{
		Users users = adminBiz.getUsersById(updateId);
		request.put("updateUser", users);
		return "toUpdateUser";
	}
	/**
	 * 修改用户
	 * @return
	 * @throws Exception
	 */
	public String doUpdateUser() throws Exception{
		adminBiz.doUpdateUser(users);
		return "doUpdateUser";
	}
	/**
	 * 删除用户
	 * @return
	 * @throws Exception
	 */
    public String todeleteUser()throws Exception{
    	Users users = adminBiz.getUsersById(updateId);
    	adminBiz.deleteUser(updateId);
    	return "todeleteUser";
    }
	Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;

	}

	Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
