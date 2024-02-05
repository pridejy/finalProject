package com.finalproject.www.manager.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalproject.www.manager.ManagerVO;

@Repository
public class ManagerDAOBatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ManagerDAOBatis() {
	}
	public void insertManager(ManagerVO vo) {
		mybatis.insert("ManagerVO.insertManager", vo);
	}
	public ManagerVO idCheck(ManagerVO vo) {
		return (ManagerVO)mybatis.selectOne("ManagerDAO.idCheck", vo);
	}
}
