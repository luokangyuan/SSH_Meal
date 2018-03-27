package com.luo.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/**
 * 菜系实体类，用于记录各种菜系，菜系和菜品是一对多的关系
 * @author Administrator
 *
 */
public class Mealseries implements Serializable {
	private Integer seriesId;//菜系编号
	private String seriesName;//菜系名称
	private Set meals = new HashSet(0);
	public Integer getSeriesId() {
		return seriesId;
	}
	public void setSeriesId(Integer seriesId) {
		this.seriesId = seriesId;
	}
	public String getSeriesName() {
		return seriesName;
	}
	public void setSeriesName(String seriesName) {
		this.seriesName = seriesName;
	}
	public Set getMeals() {
		return meals;
	}
	public void setMeals(Set meals) {
		this.meals = meals;
	}
	

}
