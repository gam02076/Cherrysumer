package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ReplyVO;

public interface IReplyDAO {
	// 댓글 조회
	public ArrayList<ReplyVO> replyList(int cusNo);

	// 댓글 조회
	public void replyWrite(ReplyVO vo);

	// 댓글 수정
	public void replyModify(ReplyVO vo);

	// 댓글 삭제
	public void replyDelete(ReplyVO vo);
	
	public ReplyVO replySelect(ReplyVO vo);
}
