package com.luo.biz;

import java.util.List;

import com.luo.entity.Orderdts;

public interface OrderDtsBiz {
	//生成订单子表
	public void addOrderDts(Orderdts dts);
	//根据订单主编号获取详细订单信息
	public List getOrderDtsByOid(int oId);

}
