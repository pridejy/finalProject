package com.finalproject.www.rooms.impl;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.finalproject.www.rooms.RoomsVO;

public interface RoomsService {
	
	List<RoomsVO> getRooms_luxury(RoomsVO vo);
	
	List<RoomsVO> getDoubleBedTypes_luxury(RoomsVO vo);
	
	List<RoomsVO> getOccupancy_standards_luxury(RoomsVO vo);
	
	List<RoomsVO> getAmenitiyTypes_luxury(RoomsVO vo);
	
	List<RoomsVO> getAdditionalTypes_luxury(RoomsVO vo);
		
	List<RoomsVO> getAccommodation_Info(RoomsVO vo);
	
	//주니어
	List<RoomsVO> getRooms_junior(RoomsVO vo);
	
	List<RoomsVO> getDoubleBedTypes_junior(RoomsVO vo);
	
	List<RoomsVO> getOccupancy_standards_junior(RoomsVO vo);
	
	List<RoomsVO> getAmenityTypes_junior(RoomsVO vo);
	
	List<RoomsVO> getAdditionalTypes_junior(RoomsVO vo);
	
	//코너
	List<RoomsVO> getRooms_Corner(RoomsVO vo);

	//배드타입
	List<RoomsVO> getDoubleBedTypes_Corner(RoomsVO vo);

	//이용기준인원
	List<RoomsVO> getOccupancy_standards_Corner(RoomsVO vo);

	//어메니티
	List<RoomsVO> getAmenityTypes_Corner(RoomsVO vo);

	//부가적인옵션
	List<RoomsVO> getAdditionalTypes_Corner(RoomsVO vo);
	
	//객실조회
	List<RoomsVO> getSearchRoomsList(RoomsVO vo);
	
	//예약신청
	void getReservation_Room(RoomsVO vo);
	
	//예약취소시 변경
	void updateRoomCancellRoom(RoomsVO vo);
	
	//모든 객실 조회
	List<RoomsVO> getAllSearchRoomsList(RoomsVO vo);
//	//객실사진
//	void uploadImage(MultipartFile file, String roomID);
	
	
}