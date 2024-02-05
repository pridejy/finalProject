package com.finalproject.www;
	
import java.time.LocalDate;
import java.util.List;
	
import javax.servlet.http.HttpSession;

import org.apache.ibatis.type.MappedTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.finalproject.www.board.BoardVO;
import com.finalproject.www.reservation.ReservationVO;
import com.finalproject.www.reservation.impl.ReservationService;
import com.finalproject.www.rooms.RoomsVO;
import com.finalproject.www.rooms.impl.RoomsService;
import com.finalproject.www.user.UserVO;
	
@Controller
@SessionAttributes("user")
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	@Autowired
	private RoomsService roomService;
	public ReservationController() {
	}
	//객실조회이동
	@RequestMapping("reservation_01.do")
	public String rsvn01(
			 			@RequestParam(value="checkin_date", required=false) 
					    @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkin_date,
					    @RequestParam(value="checkout_date", required=false) 
					    @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkout_date,
					    @RequestParam(value="room_type", defaultValue="Luxury_Room") String room_type,
					    @RequestParam(value="numPeople", defaultValue="1") int adults,
					    @RequestParam(value="numChild", defaultValue="0") int child,
//						@RequestParam("file") MultipartFile file,
						Model model, RoomsVO vo, HttpSession session) {
		System.out.println(vo.getRoom_type());
//		if(!file.isEmpty()) {
//			roomsService.uploadImage(file, );
//		}
		ReservationVO reservationVO = new ReservationVO();
		reservationVO.setCheckin_date(checkin_date);
		reservationVO.setCheckout_date(checkout_date);
		reservationVO.setAdults(adults);
		reservationVO.setChild(child);
		
		vo.setReservationVO(reservationVO);
		
		session.setAttribute("reservationVO", reservationVO);
		List<RoomsVO> searchRoomList = roomService.getSearchRoomsList(vo);
	    model.addAttribute("rsvn", vo);
		model.addAttribute("srvn", searchRoomList);
		
		
		return "reservation/rsvn_01";
	}	
	//예약페이지2이동
	@RequestMapping("reservation_02.do")
	public String rsvn02( 
			@RequestParam(value="checkin_date", required=false) 
		    @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkin_date,
		    @RequestParam(value="checkout_date", required=false) 
		    @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate checkout_date,
		    @RequestParam(value="roomType", defaultValue="Luxury_Room") String room_type,
		    @RequestParam(value="numPeople", defaultValue="1") int adults,
		    @RequestParam(value="numChild", defaultValue="0") int child,
//			@RequestParam("file") MultipartFile file,
			Model model, RoomsVO vo, HttpSession session) {
		ReservationVO reservationVO = (ReservationVO) session.getAttribute("reservationVO");
		UserVO user = (UserVO) session.getAttribute("user");
	
		vo.setReservationVO(reservationVO);
		
	  	if (user != null) {
	        reservationVO.setMember_id(user.getId());
	        
	        model.addAttribute("user", user);
	    }
	  	model.addAttribute("rsvn", vo);
	  	session.setAttribute("roomsVO", vo);

	    return "reservation/rsvn_02";
	}
	//예약페이지3
	@RequestMapping("reservation_03.do")
	public String rsvn03(@ModelAttribute("rsvn") RoomsVO vo,
	                     @RequestParam("guest") String guest,
	                     @RequestParam("guest_phone") String guest_phone,
	                     HttpSession session) {
	    ReservationVO reservationVO = (ReservationVO) session.getAttribute("reservationVO");
	    reservationVO.setRoom_id(vo.getRoom_id());
	    reservationVO.setGuest(guest);
	    reservationVO.setGuest_phone(guest_phone);

	    reservationService.insertReservation(reservationVO);
	    roomService.getReservation_Room(vo);

	    return "reservation/rsvn_03";
	}
	
	//객실 조회
	@RequestMapping("mypage_history.do")
	public String rsvn_history(RoomsVO vo, Model model, HttpSession session) {
	    UserVO user = (UserVO)session.getAttribute("user");
	    if(user !=null) {
	    	String memberId=user.getId();
	    	List<ReservationVO> reservationList = reservationService.getSearchReservation(memberId);
	 	    model.addAttribute("reservationList", reservationList);
	    }
	    return "myPage_history";
	}
	//예약 취소
	@RequestMapping("deleteReservation.do")
	public String delete(ReservationVO vo) {
		System.out.println(vo.getReservation_id());
		reservationService.deleteReservation(vo.getReservation_id());
//		roomService.updateRoomCancellRoom(vo);
		return "redirect:/mypage_history.do";
	}
	//예약 변경페이지이동
	@RequestMapping("updateReservationPage.do")
	public String updatePage(@RequestParam("reservation_id") String reservationId, Model model) {
		return "reservation/rsvn_update";
	}
}
