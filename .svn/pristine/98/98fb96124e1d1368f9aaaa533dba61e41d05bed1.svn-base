package com.luo.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luo.biz.ChildeBiz;
import com.luo.biz.MealMofangBiz;
import com.luo.dao.ChildrDAO;
import com.luo.dao.MealMofangDAO;

@Service @Transactional
public class MealMofangBizImpl implements MealMofangBiz {
	@Resource MealMofangDAO mealMofangDAO;
	
	@Override
	public List getAllMealMofang() {		
		return mealMofangDAO.getAllMealMofang();
	}

}
