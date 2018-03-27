package com.luo.biz;

import java.util.List;

import com.luo.entity.Orders;
import com.luo.entity.Pager;

public interface OrdersBiz {
	//根据id加载订单
	public Orders getOrdersByOid(int oid);
	//根据用户id获取指定用户的订单
	public List getOrdersByUserId(int userId);
	//删除指定订单号的订单
	public void deleteOrders(int oId);
	//获取指定页显示的订单列表
	public List getAllOrders(int page);
	//获取所有的订单数量，用来初始化分页类，设置其每页显示记录数和总的记录数
	public Pager getPagerOfOrders();
	//获取满足条件的，指定页显示的订单列表
	public List getOrdersByCondition(Orders condition,int page);
	//获取满足条件的订单数量，用来初始化分页类，设置其每页记录数和总的记录数
	public Pager getPagerOfOrders(Orders condition);
	//处理订单
	public void handleOrders(Orders orders);

}
