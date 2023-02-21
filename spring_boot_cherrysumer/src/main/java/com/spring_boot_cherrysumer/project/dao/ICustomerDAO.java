package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.CustomerVO;
import com.spring_boot_cherrysumer.project.model.PagingVO;

public interface ICustomerDAO {
	public ArrayList<CustomerVO> CustomerAll(PagingVO vo); //전체 글 조회
	public ArrayList<CustomerVO> CustomerAll2(String memId);//자기가 쓴 글 조회
	public void insertCustomer(CustomerVO cus);//글 쓰기
	public void updateCustomer(CustomerVO cus);//글 수정
	public void deleteCustomer(String cusNo);//글 삭제
	public CustomerVO detailCustomer(int cusNO);//글 자세히 보기
	public int countBoard();//고객센터 전체 글 수
	public ArrayList<CustomerVO> CustomerSearch(String keyword);// 검색 기능

}
