package com.luo.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 头部标题实体类，包含id name 与分类feilei是一对多的关系
 * @author Administrator
 *
 */
public class HeadTitle {
	private Integer  id;
	private String name;
	private Set feilei = new HashSet(0);
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set getFeilei() {
		return feilei;
	}
	public void setFeilei(Set feilei) {
		this.feilei = feilei;
	}
	
	
	

}
