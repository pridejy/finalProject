package com.finalproject.www.manager.impl;

import com.finalproject.www.manager.ManagerVO;

public interface ManagerService {

	void insertManager(ManagerVO vo);
	
	ManagerVO idCheck(ManagerVO vo);

}