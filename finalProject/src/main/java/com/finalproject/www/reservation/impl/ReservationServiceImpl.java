package com.finalproject.www.reservation.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproject.www.reservation.ReservationVO;


@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDAOMyBatis reservationDAO;

	public ReservationServiceImpl() {
	}
	@Override
	public void insertReservation(ReservationVO vo) {
		reservationDAO.insertReservation(vo);
	}	
	@Override
	public void deleteReservation(int vo) {
		reservationDAO.deleteReservation(vo);
	}
	@Override
	public void updateReservation(ReservationVO vo ) {
		reservationDAO.updateReservation(vo);
	}
	@Override
	public List<ReservationVO> getSearchReservation(String memberId) {
		return reservationDAO.getSearchReservation(memberId);
	}
	@Override
	public List<ReservationVO> getAllSearchReservation(ReservationVO vo){
		return reservationDAO.getAllSearchReservation(vo);
	}
}
