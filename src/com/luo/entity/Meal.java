package com.luo.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
/**
 * ��Ʒ��ϸ��Ϣʵ���࣬��Ʒ���Ӷ�����һ�Զ�Ĺ�ϵ����Ʒ�Ͳ�ϵ�Ƕ��һ�Ĺ�ϵ
 * @author Administrator
 *
 */
public class Meal implements Serializable {
	private Integer mealId;//��Ʒ���
	private Mealseries mealseries;//��Ʒ������ϵ
	private String mealName;//��Ʒ����
	private String mealSummarize;//��ƷժҪ
	private String mealDescription;//��Ʒ����
	private Double mealPrice; //��Ʒ�۸�
	private String mealImage;//��ƷͼƬ�ļ���
	private Set orderdtses = new HashSet(0);
	public Integer getMealId() {
		return mealId;
	}
	public void setMealId(Integer mealId) {
		this.mealId = mealId;
	}
	public Mealseries getMealseries() {
		return mealseries;
	}
	public void setMealseries(Mealseries mealseries) {
		this.mealseries = mealseries;
	}
	public String getMealName() {
		return mealName;
	}
	public void setMealName(String mealName) {
		this.mealName = mealName;
	}
	public String getMealSummarize() {
		return mealSummarize;
	}
	public void setMealSummarize(String mealSummarize) {
		this.mealSummarize = mealSummarize;
	}
	public String getMealDescription() {
		return mealDescription;
	}
	public void setMealDescription(String mealDescription) {
		this.mealDescription = mealDescription;
	}
	public Double getMealPrice() {
		return mealPrice;
	}
	public void setMealPrice(Double mealPrice) {
		this.mealPrice = mealPrice;
	}
	public String getMealImage() {
		return mealImage;
	}
	public void setMealImage(String mealImage) {
		this.mealImage = mealImage;
	}
	public Set getOrderdtses() {
		return orderdtses;
	}
	public void setOrderdtses(Set orderdtses) {
		this.orderdtses = orderdtses;
	}
	

}