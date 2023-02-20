package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_cherrysumer.project.dao.IReplyDAO;
import com.spring_boot_cherrysumer.project.model.ReplyVO;
@Service
public class ReplyService implements IReplyService{
	@Autowired
	  @Qualifier("IReplyDAO")
	  private IReplyDAO dao;
	
	@Override
	public ArrayList<ReplyVO> replyList(int cusNo) {
		// TODO Auto-generated method stub
		return dao.replyList(cusNo);
	}

	@Override
	public void replyWrite(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.replyWrite(vo);
	}

	@Override
	public void replyModify(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.replyModify(vo);
	}

	@Override
	public void replyDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.replyDelete(vo);
	}

	@Override
	public ReplyVO replySelect(ReplyVO vo) {
		// TODO Auto-generated method stub
		return dao.replySelect(vo);
	}

	@Override
	public ArrayList<ReplyVO> replyList2(String memId) {
		// TODO Auto-generated method stub
		return dao.replyList2(memId);
	}

	@Override
	public void replyDelete2(String cusNo) {
		dao.replyDelete2(cusNo);
		
	}

}
