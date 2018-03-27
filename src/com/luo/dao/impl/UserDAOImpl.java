package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.UserDAO;
import com.luo.entity.Admin;
import com.luo.entity.Users;
@Repository@Transactional
public class UserDAOImpl implements UserDAO {
	@Resource SessionFactory factory;
    /**
     * ��ͨ�û���¼��֤
     */
	@Override
	public List search(Users condition) {
		List list = null;
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(Users.class);
		Example example = Example.create(condition);
		criteria.add(example);
		list = criteria.list();
		return list;
	}
    /**
     * ����Ա�û���¼
     */
	@Override
	public List search(Admin condition) {
		List list = null;
		Criteria criteria = factory.getCurrentSession().createCriteria(Admin.class);
		Example example = Example.create(condition);
		criteria.add(example);
		list = criteria.list();
		return list;
	}
	/**
	 * �û�ע��
	 */
	@Override
	public void register(Users users) {
	Session session = factory.getCurrentSession();
	session.save(users);
	}

}