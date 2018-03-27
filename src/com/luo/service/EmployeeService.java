package com.luo.service;

import java.util.List;

import com.luo.bean.Employee;

public interface EmployeeService {
	public void save(Employee employee);
	public void update(Employee employee);
	public Employee find(String username);
	public void delete(String... usernames);
	public List<Employee> list();

}
