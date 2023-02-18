package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.ICustomerDAO;
import com.spring_boot_cherrysumer.project.model.CustomerVO;
import com.spring_boot_cherrysumer.project.model.PagingVO;
@Service
public class CustomerService implements ICustomerService {
	  @Autowired
	  @Qualifier("ICustomerDAO")
	  private ICustomerDAO dao;

	@Override
	public ArrayList<CustomerVO> CustomerAll(PagingVO vo) {
		
		return dao.CustomerAll(vo);
	}

	@Override
	public void insertCustomer(CustomerVO cus) {
		// TODO Auto-generated method stub
		dao.insertCustomer(cus);
	}

	@Override
	public void updateCustomer(CustomerVO cus) {
		// TODO Auto-generated method stub
		dao.updateCustomer(cus);
	}

	@Override
	public void deleteCustomer(String cusNo) {
		// TODO Auto-generated method stub
		dao.deleteCustomer(cusNo);
	}

	@Override
	public CustomerVO detailCustomer(int cusNo) {
		// TODO Auto-generated method stub
		return dao.detailCustomer(cusNo);
		
	}
	public int countBoard() {
		return dao.countBoard();
	}

	@Override
	public ArrayList<CustomerVO> CustomerSearch(String keyword) {
		// TODO Auto-generated method stub
		return dao.CustomerSearch(keyword);
	}

	@Override
	public ArrayList<CustomerVO> CustomerAll2(String memId) {
		// TODO Auto-generated method stub
		return dao.CustomerAll2(memId);
	}

}
