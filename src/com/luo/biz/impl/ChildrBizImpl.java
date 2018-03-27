package com.luo.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luo.biz.ChildeBiz;
import com.luo.dao.ChildrDAO;

@Service @Transactional
public class ChildrBizImpl implements ChildeBiz {
	@Resource ChildrDAO childrDAO;
	/**
	 * 获取所有孩子菜谱
	 */
	@Override
	public List getAllChildr() {
		return childrDAO.getAllChildr();
	}

}
