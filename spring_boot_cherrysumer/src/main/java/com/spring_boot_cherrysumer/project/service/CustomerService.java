package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.ICustomerDAO;
import com.spring_boot_cherrysumer.project.model.CustomerVO;

@Service
public class CustomerService implements ICustomerService {
	  @Autowired
	  @Qualifier("ICustomerDAO")
	  private ICustomerDAO dao;

	@Override
	public ArrayList<CustomerVO> CustomerAll() {
		
		return dao.CustomerAll();
	}

	@Override
	public void insertCustomer(CustomerVO cus) {
		// TODO Auto-generated method stub
		dao.insertCustomer(cus);
	}

	@Override
	public void updateCustomer(CustomerVO cus) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCustomer(String cusNo) {
		// TODO Auto-generated method stub
		dao.deleteCustomer(cusNo);
	}

	@Override
	public CustomerVO detailCustomer(String cusNo) {
		// TODO Auto-generated method stub
		return dao.detailCustomer(cusNo);
		
	}
}
