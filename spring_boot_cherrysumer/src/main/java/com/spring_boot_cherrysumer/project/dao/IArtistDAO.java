package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IArtistDAO {
	
	  public ArrayList<MemberVO> ArtistAll(); // 전체 아티스트 조회
	  public ArrayList<PictureVO> ArtList(String memId); // 작가 그림 목록 받아오기
	  public MemberVO Artist(String memId); //memId로 작가 정보 받아오기**
	  public ArrayList<PictureVO> ArtListALL(); //모든 작가 그림 리스트
	  
	  public PictureVO picDetail(String picNo); // 그림 상세 정보
	  public String picMemId(String picNo); // 그림 아티스트 ID
	  
	  public ArrayList<ArtVO> exList(); // 그림 아티스트 ID
	  
	  
	  
	 
	
}
