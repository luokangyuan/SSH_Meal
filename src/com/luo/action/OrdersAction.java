package com.luo.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.luo.biz.OrderDtsBiz;
import com.luo.biz.OrdersBiz;
import com.luo.entity.CartItemBean;
import com.luo.entity.Orderdts;
import com.luo.entity.Orders;
import com.luo.entity.Pager;
import com.luo.entity.Users;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class OrdersAction extends ActionSupport implements RequestAware,SessionAware {
	@Resource OrderDtsBiz orderDtsBiz;
	@Resource OrdersBiz ordersBiz;
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String date = df.format(new Date());
	
	private int ooderid;
	
	public int getOoderid() {
		return ooderid;
	}
	public void setOoderid(int ooderid) {
		this.ooderid = ooderid;
	}
	private Orders order;
	public Orders getOrders() {
		return order;
	}
	public void setOrders(Orders orders) {
		this.order = orders;
	}
	private Pager pager;//封装分页实体类
	public Pager getPager() {
		return pager;
	}
	public void setPager(Pager pager) {
		this.pager = pager;
	}
	int orderId ;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	Map<String, Object>session;
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	Map<String, Object>request;
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	/**
	 * 处理订单请求
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public String addOrders()throws Exception{
		Orders orders = new Orders();
		orders.setOrderState("未处理");
		orders.setOrderTime(date);		
		Users users = (Users) session.get("user");
		orders.setUsers(users);
		orders.setOrderPrice((Double)session.get("sumPrice"));
		Map cart = (Map) session.get("cart");
		Iterator iter = cart.keySet().iterator();
		while(iter.hasNext()){
			Object key = iter.next();
			CartItemBean cartItem = (CartItemBean) cart.get(key);
			Orderdts orderdts = new Orderdts();
			orderdts.setMeal(cartItem.getMeal());
			orderdts.setMealCount(cartItem.getQuantity());
			orderdts.setMealPrice(cartItem.getMeal().getMealPrice());
			orderdts.setOrders(orders);
			orderDtsBiz.addOrderDts(orderdts);
		}
		session.remove("cart");
		return "show";
	}
	/**
	 * 获取指定用户的订单，再转到我的订单页面
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public String toShowOrders()throws Exception{
		Users users = (Users) session.get("user");
		List myOrdersList = ordersBiz.getOrdersByUserId(users.getId());
		request.put("myOrdersList", myOrdersList);
		
		return "myorders";
	}
	/**
	 * 根据订单主编号获取 订单的详细信息
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public String toOrdersDetails()throws Exception{
		List ordersDtsList = orderDtsBiz.getOrderDtsByOid(orderId);
		request.put("ordersDtsList", ordersDtsList);
		return "toOrdersDetails";
	}
	/**
	 * 删除订单
	 * @return
	 * @throws Exception
	 */
	public String deleteOrders()throws Exception{
		ordersBiz.deleteOrders(orderId);
		return "myorders";
	}
	
	/**
	 * 获取所有的订单列表，在转到订单处理页managerOrders.jsp
	 * @return
	 * @throws Exception
	 */
	public String toManageOrders()throws Exception{
		int curPage = 1;
		
		if(pager!=null)
			curPage = pager.getCurPage();
		List ordersList = null;
		if(order!=null){
			//指定查询条件，则获取满足条件，指定页的订单列表
			ordersList = ordersBiz.getOrdersByCondition(order, curPage);
			pager = ordersBiz.getPagerOfOrders(order);
			//将查询条件放到request范围中，将作为分页超链接的参数值
			if(order.getoId()!=null)
				request.put("ordersid", order.getoId());
			   
			if((order.getOrderState()!=null)&& !order.getOrderState().equals(""))
				request.put("orderState", order.getOrderState());
			 
		}else{
			//没有指定查询条件，获取指定页的订单列表
			ordersList = ordersBiz.getAllOrders(curPage);
			//获取所有的订单数量，初始化分页类
			pager = ordersBiz.getPagerOfOrders();
		}
		//设置pager中待显示的页码
		pager.setCurPage(curPage);
		request.put("ordersList", ordersList);
		return "managerorders";
	}
	/**
	 * 处理订单
	 * @return
	 * @throws Exception
	 */
	public String handleOrders()throws Exception{
		Orders orders = ordersBiz.getOrdersByOid(ooderid);
		orders.setOrderState("已处理");
		ordersBiz.handleOrders(orders);
		return "toManagerOrders";
	}
	

}
