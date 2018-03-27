package com.luo.entity;

import java.io.Serializable;

/**
 * 订单子表
 * @author Administrator
 *
 */
public class Orderdts implements Serializable {
	private Integer odid;//子订单编号
	private Meal meal;//菜品信息
	private Orders orders;//订单信息
	private Double mealPrice;//菜品单价
	private Integer mealCount;//菜品数量
	public Integer getOdid() {
		return odid;
	}
	public void setOdid(Integer odid) {
		this.odid = odid;
	}
	public Meal getMeal() {
		return meal;
	}
	public void setMeal(Meal meal) {
		this.meal = meal;
	}
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public Double getMealPrice() {
		return mealPrice;
	}
	public void setMealPrice(Double mealPrice) {
		this.mealPrice = mealPrice;
	}
	public Integer getMealCount() {
		return mealCount;
	}
	public void setMealCount(Integer mealCount) {
		this.mealCount = mealCount;
	}
	

}
