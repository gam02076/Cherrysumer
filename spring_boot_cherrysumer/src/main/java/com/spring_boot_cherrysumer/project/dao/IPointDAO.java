package com.spring_boot_cherrysumer.project.dao;

import java.util.HashMap;

public interface IPointDAO {
	
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(HashMap<String, Object> map);
	
	public void updatePoint(HashMap<String, Object> map);
	
	public void changePoint2(HashMap<String, Object> map);
	
	public void updatePoint2(HashMap<String, Object> map);
	
	public int pointTotalCheck(String memId);
}
