package com.luo.biz;

import java.util.List;

import com.luo.entity.Users;

public interface AdminBiz {
	//分页获取所有的用户信息在后台显示
		public List pageuser(int pageIndes,int pageSize);
	//获取所有的用户信息数量，
		public Integer getUserCount();
	//根据id获取用户信息
		public Users getUsersById(Integer id);
	//修改用户信息
	   public void doUpdateUser(Users users);
	//删除用户信息
	  public void deleteUser(int deleteId);
}
