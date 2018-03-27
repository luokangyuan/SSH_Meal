package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.ChildrDAO;
import com.luo.dao.MealMofangDAO;
import com.luo.entity.Childr;
import com.luo.entity.MealMofang;
@Repository@Transactional
public class MealMofangDAOImpl implements MealMofangDAO  {
     @Resource SessionFactory factory;
     /**
      * 获取所有的菜品魔方
      */
	@Override
	public List getAllMealMofang() {
		Session session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(MealMofang.class);
		return criteria.list();
	}
	

}
