package com.luo.dao;

import java.util.List;

import com.luo.entity.Users;

public interface AdminDao {
	//分页获取所有的用户信息在后台显示
	public List pageuser(int pageIndes,int pageSize);
	//获取所有的用户记录数，用于初始化分页类总叶数
	public Integer getUserCount();
	//根据id获取对应的用户信息
	public Users getUsersById(Integer id);
	//修改用户信息
	public void doUpdateUser(Users users);
	//删除指定用户
	public void deleteUser(Users users);

}
