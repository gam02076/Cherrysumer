package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.CustomerVO;

public interface ICustomerDAO {
	public ArrayList<CustomerVO> CustomerAll();
	public void insertCustomer(CustomerVO cus);
	public void updateCustomer(CustomerVO cus);
	public void deleteCustomer(String cusNo);
	public CustomerVO detailCustomer(String cusNO);
}
