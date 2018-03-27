package com.luo.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luo.biz.UserBiz;
import com.luo.dao.UserDAO;
import com.luo.entity.Admin;
import com.luo.entity.Users;
@Service@Transactional
public class UserBizImpl implements UserBiz {
	@Resource UserDAO userDAO;
    /**
     * ��ͨ�û���¼
     */
	@Override
	public List login(Users condition) {
        return userDAO.search(condition);
	}
    /**
     * ����Ա��¼
     */
	@Override
	public List login(Admin condition) {
		return userDAO.search(condition);
	}
	/**
	 * �û�ע��
	 */
	@Override
	public void register(Users users) {
		userDAO.register(users);
	}

}