package com.luo.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luo.dao.OrderDtsDAO;
import com.luo.entity.Orderdts;
@Repository@Transactional
public class OrderDtsDAOImpl implements OrderDtsDAO {
	@Resource SessionFactory factory;
     /**
      * 生成订单子表
      */
	@Override
	public void addOrderDts(Orderdts dts) {
	  Session session = factory.getCurrentSession();
	  session.saveOrUpdate(dts);
	}
	/**
	 * 根据订单主编号获取订单详细列表
	 */
	@Override
	public List getOrderDtsByOid(int oId) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Orderdts.class);
		criteria.add(Restrictions.eq("orders.oId", oId));
		return criteria.list();
	}

}
