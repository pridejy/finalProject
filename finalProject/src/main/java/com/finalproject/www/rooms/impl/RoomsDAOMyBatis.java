package com.finalproject.www.rooms.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.finalproject.www.rooms.RoomsVO;

@Repository
public class RoomsDAOMyBatis {
	@Autowired
	private SqlSessionTemplate mybatis;

	public RoomsDAOMyBatis() {	
	}
	//럭셔리
	public List<RoomsVO> getRooms_luxury(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getRooms_luxury", vo);
	}
	//침대타입
	public List<RoomsVO> getDoubleBedTypes_luxury(RoomsVO vo) {
	    return mybatis.selectList("RoomsDAO.getDoubleBedTypes_luxury", vo);
	}
	//이용기준인원
	public List<RoomsVO> getOccupancy_standards_luxury(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getOccupancy_standards_luxury", vo);
	}
	//어메니티
	public List<RoomsVO> getAmenityTypes_luxury(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getAmenitiyTypes_luxury", vo);
	}
	//부가적인 옵션
	public List<RoomsVO> getAdditionalTypes_luxury(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getAdditionalTypes_luxury", vo);
	}
	
//	//럭셔리 객실
//	public List<RoomsVO> 
	
	//주니어 스위트
	public List<RoomsVO>getRooms_junior(RoomsVO vo){
		return mybatis.selectList("JuniorDAO.getRooms_junior", vo);
	}
	//침대타입
	public List<RoomsVO> getDoubleBedTypes_junior(RoomsVO vo){
		return mybatis.selectList("JuniorDAO.getDoubleBedTypes_junior", vo);
	}
	//이용기준인원
	public List<RoomsVO> getOccupancy_standards_junior(RoomsVO vo){
		return mybatis.selectList("JuniorDAO.getOccupancy_standards_junior", vo);
	}
	//어메니티
	public List<RoomsVO> getAmenityTypes_junior(RoomsVO vo){
		return mybatis.selectList("JuniorDAO.getAmenityTypes_junior", vo);
	}
	//부가적인 옵션
	public List<RoomsVO> getAdditionalTypes_junior(RoomsVO vo){
		return mybatis.selectList("JuniorDAO.getAdditionalTypes_junior", vo);
	}
	
	//코너 스위트
	public List<RoomsVO>getRooms_Corner(RoomsVO vo){
		return mybatis.selectList("CornerDAO.getRooms_Corner", vo);
	}
	//침대타입
	public List<RoomsVO> getDoubleBedTypes_Corner(RoomsVO vo){
		return mybatis.selectList("CornerDAO.getDoubleBedTypes_Corner", vo);
	}
	//이용기준인원
	public List<RoomsVO> getOccupancy_standards_Corner(RoomsVO vo){
		return mybatis.selectList("CornerDAO.getOccupancy_standards_Corner", vo);
	}
	//어메니티
	public List<RoomsVO> getAmenityTypes_Corner(RoomsVO vo){
		return mybatis.selectList("CornerDAO.getAmenityTypes_Corner", vo);
	}
	//부가적인 옵션
	public List<RoomsVO> getAdditionalTypes_Corner(RoomsVO vo){
		return mybatis.selectList("CornerDAO.getAdditionalTypes_Corner", vo);
	}
	
	//이용안내
	public List<RoomsVO> getAccommodation_Info(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getAccommodation_Info", vo);
	}
	//객실조회
	public List<RoomsVO> getSearchRoomsList(RoomsVO vo) {	
		return mybatis.selectList("RoomsDAO.getSearchRoomsList", vo);
	}
	//예약신청
	public void getReservation_Room(RoomsVO vo) {
		mybatis.update("RoomsDAO.Reservation_Room", vo);
	}
	//예약취소시 변경
	public void updateRoomCancellRoom(RoomsVO vo) {
		mybatis.update("RoomsDAO.updateRoomCancellRoom", vo);
	}
	
	//모든 객실 조회
	public List<RoomsVO> getAllSearchRoomsList(RoomsVO vo){
		return mybatis.selectList("RoomsDAO.getAllSearchRoomsList", vo);
	}
}
