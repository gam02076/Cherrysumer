package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ReplyVO;

public interface IReplyDAO {
	// 댓글 조회
	public ArrayList<ReplyVO> replyList(int cusNo);
	
	public ArrayList<ReplyVO> replyList2(String memId);

	// 댓글 조회
	public void replyWrite(ReplyVO vo);

	// 댓글 수정
	public void replyModify(ReplyVO vo);

	// 댓글 삭제
	public void replyDelete(ReplyVO vo);
	//게시물 삭제에 필요한 댓글 삭제
	public void replyDelete2(String cusNo);
	public ReplyVO replySelect(ReplyVO vo);
}
