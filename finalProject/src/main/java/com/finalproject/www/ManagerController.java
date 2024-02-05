package com.finalproject.www;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.finalproject.www.board.BoardVO;
import com.finalproject.www.board.impl.BoardService;
import com.finalproject.www.manager.impl.ManagerService;
import com.finalproject.www.reservation.ReservationVO;
import com.finalproject.www.reservation.impl.ReservationService;
import com.finalproject.www.rooms.RoomsVO;
import com.finalproject.www.rooms.impl.RoomsService;
import com.finalproject.www.user.UserVO;
import com.finalproject.www.user.impl.UserService;

@Controller
public class ManagerController {
	@Autowired
	private ManagerService ManagerService;
	@Autowired
	private UserService userService;
	@Autowired
	private RoomsService roomService;
	@Autowired
	private ReservationService reservationService;
	@Autowired
	private BoardService boardService;
	
	public ManagerController() {	
	}
	// 매니저 페이지 이동
	@RequestMapping("adminPage.do")
	public String adminPage() {
		return "admin/adminPage";
	}
	// 사용자 리스트 페이지 이동
	@RequestMapping("userList.do")
	public String userList(UserVO vo, Model model) {
	    List<UserVO> userList = userService.getAllUser(vo);
	    model.addAttribute("userList", userList);
	    return "admin/userList";
	}
	//객실 리스트 페이지 이동
	@RequestMapping("roomList.do")
	public String roomList(RoomsVO vo, Model model) {
		List<RoomsVO> roomList = roomService.getAllSearchRoomsList(vo);
		model.addAttribute("roomList", roomList);
		return "admin/RoomList";
	}
	//예약 리스트 페이지 이동
	@RequestMapping("reservation.do")
	public String reservationList(ReservationVO vo, Model model) {
		List<ReservationVO> reservationList = reservationService.getAllSearchReservation(vo);
		model.addAttribute("reservationList", reservationList);
		return "admin/reservationList";
	}
	//게시판 리스트 페이지 이동
	@RequestMapping("boardList.do")
	public String boardList(BoardVO vo, Model model) {
		List<BoardVO> boardList = boardService.getAllBoardList(vo);
		model.addAttribute("boardList", boardList);
		return "admin/boardList";
	}
	//럭셔리 객실 만들기
	@RequestMapping("luxuryRoom.do")
	public String luxuryRoom() {
		return "admin/RoomsList";
	}
}
