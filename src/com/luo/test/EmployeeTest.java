package com.luo.test;


import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.luo.bean.Employee;
import com.luo.bean.Gender;
import com.luo.service.EmployeeService;

public class EmployeeTest {
	private static EmployeeService employeeService;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception{
		try {
			ApplicationContext act =  new ClassPathXmlApplicationContext("beans.xml");
			employeeService = (EmployeeService) act.getBean("employeeServiceBean");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	@Test
	public void test() {
		new ClassPathXmlApplicationContext("beans.xml");
	}

	@Test
	public void save() {
		employeeService.save(new Employee("王四五", "123456"));
	}
	@Test
	public void update() {
		Employee employee = employeeService.find("罗康元");
		employee.setGender(Gender.WOMEN);
		employeeService.update(employee);
	}
	@Test
	public void delete() {
		employeeService.delete("罗康元");
	}
	@Test
	public void list() {
		List<Employee> employee = employeeService.list();
	    for(Employee em:employee)
		System.out.println(em.getPassword());
	}
	@Test
	public void find() {
		Employee employee = employeeService.find("罗康元");
	    System.out.println(employee.getPassword());
	}
	
}
