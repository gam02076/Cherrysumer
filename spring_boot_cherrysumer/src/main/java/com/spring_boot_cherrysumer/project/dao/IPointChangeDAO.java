package com.spring_boot_cherrysumer.project.dao;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.PointChangeVO;

public interface IPointChangeDAO {
	public ArrayList<PointChangeVO> pointView(String memId);
}
