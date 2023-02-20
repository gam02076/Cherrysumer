package com.spring_boot_cherrysumer.project.dao;

import com.spring_boot_cherrysumer.project.model.ArtVO;
import com.spring_boot_cherrysumer.project.model.DealVO;
import com.spring_boot_cherrysumer.project.model.MemberVO;
import com.spring_boot_cherrysumer.project.model.MypageVO;
import com.spring_boot_cherrysumer.project.model.PictureVO;

public interface IDealDAO {
	
	public PictureVO DealCheck(String picNo);

	MypageVO Dealinfo(String memId);
	
	
	public void insertdeal(DealVO vo ); // 등록
	
	
	 public ArtVO exhDetail(String exhNo); // 그림 상세 정보
	  public String picMemId(String exhNo); // 그림 아티스트 ID

	  public MemberVO Artist(String memId);

	public ArtVO Noexh(String artImg);

	public ArtVO exDealCheck(String artNo);

	public MemberVO memCheck(String memId);


}
