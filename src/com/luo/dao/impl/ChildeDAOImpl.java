package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.ChildrDAO;
import com.luo.entity.Childr;
@Repository@Transactional
public class ChildeDAOImpl implements ChildrDAO {
     @Resource SessionFactory factory;
	/**
	 * 实现获取所有孩子菜谱
	 */
	@Override
	public List getAllChildr() {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(Childr.class);
		return criteria.list();
	}

}
