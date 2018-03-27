package com.luo.dao;

import java.util.List;

import com.luo.entity.Feilei;
import com.luo.entity.Meal;

public interface MealDAO {
	//获取指定页的菜品列表
	public List getAllMeal(int page);
	//统计所有菜品数量
	public Integer getCountofAllMeal();
	//根据查询条件，获取指定页显示的菜品列表
	public List getMealByCondition(Meal condition,int page);
	//统计符合查询条件的菜品总数
	public Integer getCountOfMeal(Meal condition);
	//根据菜品编号加载菜品
	public Meal getMealById(int mealId);
	//添加菜品
	public void addMeal(Meal meal);
	//修改菜品
	public void updateMeal(Meal meal);
	//删除菜品
	public void deleteMeal(Meal meal);
	//获取所有的标题
	public List getAllTitle();
	//根据标题id获取指定的分类
	public List getFeileiByTitleId(Feilei condition);

}
