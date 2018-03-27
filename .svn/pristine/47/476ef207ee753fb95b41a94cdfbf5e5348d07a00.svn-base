package com.luo.dao;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;

import com.luo.entity.Orders;

/**
 * 根据用户名查看订单
 * @author Administrator
 *
 */
public interface OrdersDAO {
	//获取指定用户的订单列表
	public List getOrdersByUserId(int userId);
	//根据订单号加载订单
	public Orders getOrdersByOid(int oId);
	//删除订单
	public void deleteOrders(Orders orders);
	//获取指定页显示的订单列表
	public List getAllOrders(int Page);
	//统计所有的订单总数
	public Integer getCountOfAllOrders();
	//获取满足条件，指定页显示的订单列表
	public List getOrdersByCondition(Orders condition,int page);
	//统计满足条件的订单数
	public Integer getCountOfOrders(Orders condition);
    //更新对象
	public void updateOrders(Orders orders);
}
