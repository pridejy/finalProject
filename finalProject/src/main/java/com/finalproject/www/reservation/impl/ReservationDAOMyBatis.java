package com.finalproject.www.reservation.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalproject.www.reservation.ReservationVO;

@Repository
public class ReservationDAOMyBatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ReservationDAOMyBatis() {
	}
	//예약신청
	public void insertReservation(ReservationVO vo){
		mybatis.insert("reservationDAO.insertReservation", vo);
	}
	//에약삭제
	public void deleteReservation(int vo) {
		mybatis.delete("reservationDAO.deleteReservation", vo);
	}
	//예약변경
	public void updateReservation(ReservationVO vo) {
		mybatis.update("reservationDAO.updateReservation", vo);
	}
	//예약 검색
	public List<ReservationVO> getSearchReservation(String memberId) {
		return mybatis.selectList("reservationDAO.getSearchReservation", memberId);
	}
	//모든 예약정보
	public List<ReservationVO> getAllSearchReservation(ReservationVO vo){
		return mybatis.selectList("reservationDAO.getAllSearchReservation", vo);
	}
}
