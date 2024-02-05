package com.finalproject.www;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.finalproject.www.reservation.ReservationVO;
import com.finalproject.www.rooms.RoomsVO;
import com.finalproject.www.rooms.impl.RoomsService;
import com.finalproject.www.user.UserVO;

@Controller
public class RoomsController {
	@Autowired
	private RoomsService roomsService;
	
	public RoomsController() {
	}
	//호텔형-럭셔리페이지이동
	@RequestMapping("luxuryPage.do")
	public String luxuryPage(RoomsVO vo, Model model) {
	    List<RoomsVO> roomsList = roomsService.getRooms_luxury(vo);
	    List<RoomsVO> bedType = roomsService.getDoubleBedTypes_luxury(vo);
	    List<RoomsVO> Amenity = roomsService.getAmenitiyTypes_luxury(vo);
	    List<RoomsVO> occupancy_standards = roomsService.getOccupancy_standards_luxury(vo);
	    List<RoomsVO> additional = roomsService.getAdditionalTypes_luxury(vo);
	    List<RoomsVO> Info = roomsService.getAccommodation_Info(vo);
	 
	    model.addAttribute("Rooms", roomsList);
	    model.addAttribute("BedType", bedType);
	    model.addAttribute("Amenity", Amenity);
	    model.addAttribute("occupancy", occupancy_standards);
	    model.addAttribute("additional", additional);
	    model.addAttribute("Info", Info);
	    return "Accommodation/hotel_luxury";
	}
	//호텔형-주니어스위트페이지이동
	@RequestMapping("suitePage.do")
	public String suitePage(RoomsVO vo, Model model) {
	    List<RoomsVO> roomsList = roomsService.getRooms_junior(vo);
	    List<RoomsVO> bedType = roomsService.getDoubleBedTypes_junior(vo);
	    List<RoomsVO> Amenity = roomsService.getAmenityTypes_junior(vo);
	    List<RoomsVO> occupancy_standards = roomsService.getOccupancy_standards_junior(vo);
	    List<RoomsVO> additional = roomsService.getAdditionalTypes_junior(vo);
	    List<RoomsVO> Info = roomsService.getAccommodation_Info(vo);

	    model.addAttribute("Rooms", roomsList);
	    model.addAttribute("BedType", bedType);
	    model.addAttribute("Amenity", Amenity);
	    model.addAttribute("occupancy", occupancy_standards);
	    model.addAttribute("additional", additional);
	    model.addAttribute("Info", Info);
		return "Accommodation/hotel_suite";
	}
	//호텔형-코너스위트페이지이동
	@RequestMapping("conerPage.do")
	public String conerPage(RoomsVO vo, Model model) {
	    List<RoomsVO> roomsList = roomsService.getRooms_Corner(vo);
	    List<RoomsVO> bedType = roomsService.getDoubleBedTypes_Corner(vo);
	    List<RoomsVO> Amenity = roomsService.getAmenityTypes_Corner(vo);
	    List<RoomsVO> occupancy_standards = roomsService.getOccupancy_standards_Corner(vo);
	    List<RoomsVO> additional = roomsService.getAdditionalTypes_Corner(vo);
	    List<RoomsVO> Info = roomsService.getAccommodation_Info(vo);

	    
	    System.out.println(roomsList);
	    model.addAttribute("Rooms", roomsList);
	    model.addAttribute("BedType", bedType);
	    model.addAttribute("Amenity", Amenity);
	    model.addAttribute("occupancy", occupancy_standards);
	    model.addAttribute("additional", additional);
	    model.addAttribute("Info", Info);
	    
		return "Accommodation/hotel_coner";
	}
	//예약 페이지이동
	@RequestMapping("reservationPage.do")
	public String rsvnPage() {
		return "reservation/rsvn_01";
	}
}
