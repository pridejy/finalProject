package com.finalproject.www.reservation.impl;

import java.util.List;

import com.finalproject.www.reservation.ReservationVO;


public interface ReservationService {

	void insertReservation(ReservationVO vo);
	
	void deleteReservation(int vo); 
	
	void updateReservation(ReservationVO vo);
	
	List<ReservationVO> getSearchReservation(String memberId);
	
	List<ReservationVO> getAllSearchReservation(ReservationVO vo);
}