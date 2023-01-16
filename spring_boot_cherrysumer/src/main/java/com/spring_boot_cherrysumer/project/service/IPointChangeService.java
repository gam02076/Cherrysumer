package com.spring_boot_cherrysumer.project.service;

import java.util.ArrayList;

import com.spring_boot_cherrysumer.project.model.PointChangeVO;

public interface IPointChangeService {
	public ArrayList<PointChangeVO> pointView(String memId);
}
