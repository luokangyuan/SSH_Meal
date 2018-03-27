package com.luo.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luo.biz.OrdersBiz;
import com.luo.dao.OrdersDAO;
import com.luo.entity.Orders;
import com.luo.entity.Pager;
@Service@Transactional
public class OrdersBizImpl implements OrdersBiz {
	@Resource OrdersDAO ordersDAO;
     /**
      * 获取指定用户的订单列表
      */
	@Override
	public List getOrdersByUserId(int userId) {
		return ordersDAO.getOrdersByUserId(userId);
	}
	/**
	 * 删除指定订单号的订单
	 */
	@Override
	public void deleteOrders(int oId) {
		Orders orders = ordersDAO.getOrdersByOid(oId);
		ordersDAO.deleteOrders(orders);
		
	}
	/**
	 * //获取指定页的订单记录数
	 */
	@Override
	public List getAllOrders(int page) {
		
		return ordersDAO.getAllOrders(page);
	}
	/**
	 * 获取所有的订单数用来初始化分页类
	 */
	@Override
	public Pager getPagerOfOrders() {
		int count = ordersDAO.getCountOfAllOrders();
		Pager pager = new Pager();
		pager.setPerPageRows(9);
		pager.setRowCount(count);
		return pager;
	}
	/**
	 * 获取满足条件的，指定页的订单列表
	 */
	@Override
	public List getOrdersByCondition(Orders condition, int page) {
		
		return ordersDAO.getOrdersByCondition(condition, page);
	}
	/**
	 * 获取满足条件的订单数量，用来初始化分页类
	 */
	@Override
	public Pager getPagerOfOrders(Orders condition) {
		int count = ordersDAO.getCountOfOrders(condition);
		Pager pager = new Pager();
		pager.setPerPageRows(9);
		pager.setRowCount(count);
		return pager;
	}
	/**
	 * 处理订单
	 */
	@Override
	public void handleOrders(Orders orders) {
		ordersDAO.updateOrders(orders);
	}
	/**
	 * 根据id加载订单
	 */
	@Override
	public Orders getOrdersByOid(int oid) {
		
		return ordersDAO.getOrdersByOid(oid);
	}

}
