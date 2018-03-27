package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.MealSeriesDAO;
import com.luo.entity.Mealseries;
@Repository@Transactional
public class MealSeriesDAOImpl implements MealSeriesDAO {
	@Resource SessionFactory factory;
    /**
     * 获取所有菜系列表
     */
	@Override
	public List getMealSeries() {
		Criteria criteria = factory.getCurrentSession().createCriteria(Mealseries.class);
		return criteria.list();
	}

}
