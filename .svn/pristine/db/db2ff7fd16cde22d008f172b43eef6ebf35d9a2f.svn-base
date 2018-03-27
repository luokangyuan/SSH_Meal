package com.luo.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.luo.biz.MealBiz;
import com.luo.entity.CartItemBean;
import com.luo.entity.Meal;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class CartAction extends ActionSupport implements SessionAware {
	@Resource MealBiz mealBiz;
	private Integer mealId;//封装点击购买传递的参数id
	public Integer getMealId() {
		return mealId;
	}
	public void setMealId(Integer mealId) {
		this.mealId = mealId;
	}
	int quantity;//封装传递的菜品数量
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * 将菜品加到购物车中
	 * @return
	 * @throws Exception
	 */
	public String addtoshopcart()throws Exception{
		//从Session中取出购物车放入Map对象cart中
		Map cart = (Map) session.get("cart");
		//获取当前要添加到购物车的菜品
		Meal meal = mealBiz.getMealById(mealId);
		//如果购物车不存在，则创建购物车
		if(cart==null){
			cart = new HashMap();
			session.put("cart", cart);
		}
		//如果存在购物车，则判断菜品在不在购物车里
		CartItemBean cartItem = (CartItemBean) cart.get(meal.getMealId());
		if(cartItem!=null){
			//菜品在购物车里，更新其数量
			cartItem.setQuantity(cartItem.getQuantity()+1);
		}else{
			//菜品不在购物车里，则创建一个新的条目到Map中
			cart.put(meal.getMealId(), new CartItemBean(meal, 1));
		}
		//页面跳转到shopcart.jsp页面
		return "shopCart";
	}
	
    Map<String, Object>session;
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	/**
	 * 修改购物车菜品数量
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public String updateQuantity()throws Exception{
		//从session中取出购物车
		Map cart = (Map) session.get("cart");
		CartItemBean cartItem = (CartItemBean) cart.get(mealId);
		cartItem.setQuantity(quantity);
			return "shopCart";
	}
	/**
	 * 删除购物车中的订单
	 * @return
	 * @throws Exception
	 */
	public String deleteOrders()throws Exception{
		Map cart = (Map) session.get("cart");
		cart.remove(mealId);
		return "shopCart";
	}
	/**
	 * 清空购物车
	 * @return
	 * @throws Exception
	 */
	public String clearCart()throws Exception{
		//从session中取出购物车
		Map cart = (Map) session.get("cart");
		cart.clear();		
		return "shopCart";
	}
}
