package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.CustomerVO;
import com.spring_boot_cherrysumer.project.model.PagingVO;

public interface ICustomerDAO {
	public ArrayList<CustomerVO> CustomerAll(PagingVO vo);
	public void insertCustomer(CustomerVO cus);
	public void updateCustomer(CustomerVO cus);
	public void deleteCustomer(String cusNo);
	public CustomerVO detailCustomer(int cusNO);
	public int countBoard();
	public ArrayList<CustomerVO> CustomerSearch(String keyword);

}
