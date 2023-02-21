package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.ExhibitionVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;

public interface IExhibitionService {
	// 전시회 조회
	public ExhibitionVO detailViewExhibibition(String exhNo);
	
	// 전시회 회원 정보 출력에 필요한 메소드
	public MemberVO getMemberInfo(String memId);
	
	// 전시회 작품 출력에 필요한 메소드
	public ArrayList<ArtVO> getArtInfo(String memId);
	
	
	
	// 신청서
	// 관리자페이지(신청완료)에 신청 정보 저장
//	public void insertExhRequest(ExhibitionVO Evo, HashMap<String, Object> map); 
	public void insertExhRequest(ExhibitionVO Evo); 
	
	public void insertExhRequestArt(ArtVO Avo); 
	
	// 전시회 신청서에 회원 정보 상세 출력에 필요한 메소드
	public MemberVO ExhRequest_MemberInfo(String memId);
	
	
	// 신청서 목록 관리자 페이지
	// 관리자 페이지에서 전체 조회
	public ArrayList<ExhibitionVO> listAllRequest();
	
	// 전시회 신청 목록에 출력할 회원 정보
	public MemberVO getMemberInfo2(String memId);
	
	// 전시회 승인 여부 저장
	public void confirmSave(ExhibitionVO exh);

}
