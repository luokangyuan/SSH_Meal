package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.CharactDAO;
import com.luo.entity.Characteristic;
@Repository@Transactional
public class CharactDAOImol implements CharactDAO {
	@Resource SessionFactory factory;
    
	/**
	 * 获取所有的各地特色
	 */
	@Override
	public List getAllChariac() {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(Characteristic.class);
		return criteria.list();
	}

}
