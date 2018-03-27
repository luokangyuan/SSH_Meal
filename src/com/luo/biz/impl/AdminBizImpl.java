package com.luo.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luo.biz.AdminBiz;
import com.luo.dao.AdminDao;
import com.luo.entity.Users;
@Service@Transactional
public class AdminBizImpl implements AdminBiz {
	@Resource AdminDao adminDao;
	/**
	 * 分页查询用户信息
	 */
	@Override
	public List pageuser(int pageIndes, int pageSize) {	
		return adminDao.pageuser(pageIndes, pageSize);
	}
	/**
	 * 获取所有用户信息数量
	 */
	@Override
	public Integer getUserCount() {		
		return adminDao.getUserCount();
	}
	/**
	 * 根据id获取对应的用户信息
	 */
	@Override
	public Users getUsersById(Integer id) {
		return adminDao.getUsersById(id);
	}
	/**
	 * 修改用户信息
	 */
	@Override
	public void doUpdateUser(Users users) {
		adminDao.doUpdateUser(users);
	}
	/**
	 * 删除用户信息
	 */
	@Override
	public void deleteUser(int deleteId) {
		Users users = adminDao.getUsersById(deleteId);
		adminDao.deleteUser(users);
		
	}

}
