package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.MealDAO;
import com.luo.entity.Feilei;
import com.luo.entity.HeadTitle;
import com.luo.entity.Meal;
@Repository@Transactional
public class MealDAOImpl implements MealDAO {
    @Resource SessionFactory factory;
    /**
     * 获取指定页的菜品列表
     */
	@Override
	public List getAllMeal(int page) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Meal.class);
		criteria.setFirstResult(12*(page-1));
		criteria.setMaxResults(12);		
		return criteria.list();
	}
    
	/**
	 * 统计所有菜品数量
	 */
	@Override
	public Integer getCountofAllMeal() {
		Integer count = null;
		try {
			Session session = factory.getCurrentSession();
			String hql = "select count(s) from Meal s";
			Query query = session.createQuery(hql);
			count = Integer.parseInt(query.uniqueResult().toString());
		} catch (HibernateException e) {			
			e.printStackTrace();
		} 
		return count;
		
	/*	Criteria criteria = factory.getCurrentSession().createCriteria(Meal.class);
		return criteria.list().size();*/
	}
    
	/**
	 * 根据查询条件，获取指定页显示的菜品列表
	 */
	@Override
	public List getMealByCondition(Meal condition, int page) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Meal.class);
		if(condition!=null){
			if(condition.getMealName()!=null&&!condition.getMealName().equals("")){
				//按菜品进行筛选
				criteria.add(Restrictions.like("mealName", condition.getMealName(),MatchMode.ANYWHERE));
			}
			if((condition.getMealseries()!=null)&&(condition.getMealseries().getSeriesId()!=null)){
				//按菜系进行筛选
				criteria.add(Restrictions.eq("mealseries.seriesId", condition.getMealseries().getSeriesId()));
			}
		}
		criteria.setFirstResult(12*(page-1));
		criteria.setMaxResults(12);
		return criteria.list();
	}

	@Override
	public Integer getCountOfMeal(Meal condition) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Meal.class);
		if(condition!=null){
			if(condition.getMealName()!=null&&!condition.getMealName().equals("")){
				//按菜品进行筛选
				criteria.add(Restrictions.like("mealName", condition.getMealName(),MatchMode.ANYWHERE));
			}
			if((condition.getMealseries()!=null)&&(condition.getMealseries().getSeriesId()!=null)){
				//按菜系进行筛选
				criteria.add(Restrictions.eq("mealseries.seriesId", condition.getMealseries().getSeriesId()));
			}
		}
		
		return criteria.list().size();
	}
    /**
     * 根据菜品编号加载菜品
     */
	@Override
	public Meal getMealById(int mealId) {
		Session session = factory.getCurrentSession();
			return (Meal) session.get(Meal.class, mealId);
	}
     /**
      * 添加菜品
      */
	@Override
	public void addMeal(Meal meal) {
		Session session = factory.getCurrentSession();
		session.save(meal);
	}
    /**
     * 修改菜品
     */
	@Override
	public void updateMeal(Meal meal) {
		Session session = factory.getCurrentSession();
		session.update(meal);
	}
    /**
     * 删除菜品
     */
	@Override
	public void deleteMeal(Meal meal) {
	Session session = factory.getCurrentSession();
	session.delete(meal);
	}
    
	/**
	 * 获取所有的标题
	 */
	@Override
	public List getAllTitle() {
		Session  session = factory.getCurrentSession();
		Criteria criteria = session.createCriteria(HeadTitle.class);
		return criteria.list();
	}
    /**
     * 根据标题编号条件获取分类列表
     */
	@Override
	public List getFeileiByTitleId(Feilei condition) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Feilei.class);
		if(condition!=null){
			if((condition.getHeadTitle()!=null)&&(condition.getHeadTitle().getId()!=null)){
				//按标题进行选择
				criteria.add(Restrictions.eq("headTitle.id", condition.getHeadTitle().getId()));
			}
			
		}
		return criteria.list();
	}

}
