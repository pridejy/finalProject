package com.finalproject.www.rooms.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.finalproject.www.rooms.RoomsVO;

@Service("roomsService")
public class RoomsSerivceImpl implements RoomsService  {
	@Autowired
	private RoomsDAOMyBatis RoomsDAO;
	@Autowired
	private RoomsDAOMyBatis CornerDAO;
	@Autowired
	private RoomsDAOMyBatis JuniorDAO;
	
	public RoomsSerivceImpl() {
	}
	@Override
	public List<RoomsVO> getRooms_luxury(RoomsVO vo){
		return RoomsDAO.getRooms_luxury(vo);
	}
	//배드타입
	@Override
	public List<RoomsVO> getDoubleBedTypes_luxury(RoomsVO vo) {
		return RoomsDAO.getDoubleBedTypes_luxury(vo);
	}
	//이용기준인원
	@Override
	public List<RoomsVO> getOccupancy_standards_luxury(RoomsVO vo){
		return RoomsDAO.getOccupancy_standards_luxury(vo);
	}
	//어메니티
	@Override
	public List<RoomsVO> getAmenitiyTypes_luxury(RoomsVO vo){
		return RoomsDAO.getAmenityTypes_luxury(vo);
	}
	//부가적인옵션
	@Override
	public List<RoomsVO> getAdditionalTypes_luxury(RoomsVO vo){
		return RoomsDAO.getAdditionalTypes_luxury(vo);
	}
	//이용안내
	@Override
	public List<RoomsVO> getAccommodation_Info(RoomsVO vo){
		return RoomsDAO.getAccommodation_Info(vo);
	}
	//코너 스위트
	@Override
	public List<RoomsVO> getRooms_Corner(RoomsVO vo){
		return CornerDAO.getRooms_Corner(vo);
	}
	//배드타입
	@Override
	public List<RoomsVO> getDoubleBedTypes_Corner(RoomsVO vo) {
		return CornerDAO.getDoubleBedTypes_Corner(vo);
	}
	//이용기준인원
	@Override
	public List<RoomsVO> getOccupancy_standards_Corner(RoomsVO vo){
		return CornerDAO.getOccupancy_standards_Corner(vo);
	}
	//어메니티
	@Override
	public List<RoomsVO> getAmenityTypes_Corner(RoomsVO vo){
		return CornerDAO.getAmenityTypes_Corner(vo);
	}
	//부가적인옵션
	@Override
	public List<RoomsVO> getAdditionalTypes_Corner(RoomsVO vo){
		return CornerDAO.getAdditionalTypes_Corner(vo);
	}
	
	//주니어 
	@Override
	public List<RoomsVO> getRooms_junior(RoomsVO vo){
		return JuniorDAO.getRooms_junior(vo);
	}
	//배드타입
	@Override
	public List<RoomsVO> getDoubleBedTypes_junior(RoomsVO vo) {
		return JuniorDAO.getDoubleBedTypes_junior(vo);
	}
	//이용기준인원
	@Override
	public List<RoomsVO> getOccupancy_standards_junior(RoomsVO vo){
		return JuniorDAO.getOccupancy_standards_junior(vo);
	}
	//어메니티
	@Override
	public List<RoomsVO> getAmenityTypes_junior(RoomsVO vo){
		return JuniorDAO.getAmenityTypes_junior(vo);
	}
	//부가적인옵션
	@Override
	public List<RoomsVO> getAdditionalTypes_junior(RoomsVO vo){
		return JuniorDAO.getAdditionalTypes_junior(vo);
	}
	
	//객실 조회
	@Override
	public List<RoomsVO> getSearchRoomsList(RoomsVO vo) {
		return RoomsDAO.getSearchRoomsList(vo);
	}
	//예약신청
	@Override
	public void getReservation_Room(RoomsVO vo) {
		RoomsDAO.getReservation_Room(vo);
	}
	//예약취소시 변경
	public void updateRoomCancellRoom(RoomsVO vo) {
		RoomsDAO.updateRoomCancellRoom(vo);
	}
	//모든 객실 조회
	public List<RoomsVO> getAllSearchRoomsList(RoomsVO vo){
		return RoomsDAO.getAllSearchRoomsList(vo);
	}
	
	//객실사진
//	@Override
//	@Transactional
//	public void uploadImage(MultipartFile file, String roomId) {
//		String imagePath = saveImageToServer(file);
//		roomRepository.updateImagePath(roomId, imagePath);
//	}
//	
//	private String saveImageToServer(MultipartFile file) {
//		
//	}
}
