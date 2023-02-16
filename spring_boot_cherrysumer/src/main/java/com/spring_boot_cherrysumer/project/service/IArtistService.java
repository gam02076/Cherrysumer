package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.Exhibition2VO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IArtistService {
	
	 public ArrayList<MemberVO> ArtistAll(); // 전체 아티스트 조회
	  public ArrayList<PictureVO> ArtList(String memId); // 마이페이지 작가 그림 목록 받아오기
	  public MemberVO Artist(String memId); //memId로 작가 정보 받아오기**
	  
	  public PictureVO picDetail(String picNo); // 그림 상세 정보
	  public String picMemId(String picNo); // 그림 아티스트 ID
	  
	  public ArrayList<Exhibition2VO> exList2(String today); // 전시회 목록
	  public ArrayList<Exhibition2VO> comingList(String today); // 전시회 coming soon 목록
	  public String artistName(String memId); // memId로 작가 이름 받아오기 **
	  
	  public void ArtUpdate(PictureVO vo); // 내 그럼 정보 업데이트
	  public void myArtDelete(String picNo); //삭제버튼 클릭시 데이터 삭제
	  public int NowMyPoint(String memId); //현재 내 포인트 사용 내역
	}
