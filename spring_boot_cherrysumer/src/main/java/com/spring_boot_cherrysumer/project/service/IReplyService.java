package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ReplyVO;

public interface IReplyService {
	// 댓글 조회
	public ArrayList<ReplyVO> replyList(int cusNo);

	// 댓글 조회
	public void replyWrite(ReplyVO vo);

	// 댓글 수정
	public void replyModify(ReplyVO vo);

	// 댓글 삭제
	public void replyDelete(ReplyVO vo);
	
	public ReplyVO replySelect(ReplyVO vo);
	
	public ArrayList<ReplyVO> replyList2(String memId);
}
