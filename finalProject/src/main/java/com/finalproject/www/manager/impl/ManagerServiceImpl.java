package com.finalproject.www.manager.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.www.manager.ManagerVO;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDAOBatis ManagerDAO;
	
	public ManagerServiceImpl() {
	}
	public void insertManager(ManagerVO vo) {
		ManagerDAO.insertManager(vo);
	}
	public ManagerVO idCheck(ManagerVO vo) {
		return ManagerDAO.idCheck(vo);
	}
	
}
