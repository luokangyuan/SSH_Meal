package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.AdminDao;
import com.luo.entity.Users;
@Repository@Transactional
public class AdminDaoImpl implements AdminDao {
	@Resource SessionFactory factory;
     /**
      * 分页查询出用户的信息
      */
	@Override
	public List pageuser(int pageIndes, int pageSize) {
		Session session = factory.getCurrentSession();
		String hql = "from Users u order by u.id asc ";
		Query query = session.createQuery(hql);
		int startIndex = (pageIndes-1)*pageSize;
		query.setFirstResult(startIndex);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}
    /**
     * 获取所有的用户信息数量，用于初始化分页类
     */
	@Override
	public Integer getUserCount() {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(Users.class);
		return criteria.list().size();
	}
	/**
	 * 根据id获取对应的用户信息
	 */
	@Override
	public Users getUsersById(Integer id) {
		Session session = factory.getCurrentSession();
		return (Users) session.get(Users.class, id);
	}
	/**
	 * 修改用户信息
	 */
	@Override
	public void doUpdateUser(Users users) {
		Session session = factory.getCurrentSession();
		session.update(users);
	}
	/**
	 * 删除用户
	 */
	@Override
	public void deleteUser(Users users) {
		Session session = factory.getCurrentSession();
		session.delete(users);
		
		
	}

}
