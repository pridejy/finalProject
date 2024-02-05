package com.finalproject.www;

import com.finalproject.www.board.BoardVO;
import com.finalproject.www.board.impl.BoardService;
import com.finalproject.www.user.UserVO;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	public BoardController() {
	}
//	//게시판 페이지 이동
//	@RequestMapping("boardPage.do")
//	public String boardPage() {
//		return "boardPage";
//	}
	//게시판 등록 페이지 이동
	@RequestMapping("/insertBoardPage.do")
	public String insertBoardPage(UserVO vo, HttpSession session, Model model) {
		UserVO user = (UserVO) session.getAttribute("user");
		System.out.println(user.getId());
		model.addAttribute("userId", user.getId());
		return "insertBoard";
	}
	//게시판 등록 
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo, UserVO user) throws IOException {
		boardService.insertBoard(vo);
		return "redirect:/getBoardList.do";
	}
	//게시판 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, HttpSession session) throws IOException {
		boardService.updateBoard(vo);
		return "redirect:/getBoardList.do";
	}
	//글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(int seq) {
		boardService.deleteBoard(seq);
		return "redirect:/getBoardList.do"; 
	}
	//게시판 상세 내용
	@RequestMapping("/getBoard.do")
	public String getBoard(@RequestParam("seq") int seq, BoardVO vo, Model model, HttpSession session) {
		BoardVO board = boardService.getBoard(vo);
		boardService.updateBoardHit(seq);
		model.addAttribute("board", board);
		return "getBoard";
	}
	//게시판 목록
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, 
	                            @RequestParam(value="curPage", defaultValue="1") int curPage,
	                            Model model) {
	    if (vo.getSearchCondition() == null) {
	        vo.setSearchCondition("ALL");
	    }

	    if (vo.getSearchKeyword() == null) {
	        vo.setSearchKeyword("");
	    } 
	    
	    List<BoardVO> boardList = boardService.getBoardList(vo);
	    
	    model.addAttribute("boardList", boardList);
	    return "boardPage";
	}
	//게시판 검색
	@RequestMapping("/search.do")
	@ResponseBody
	public List<BoardVO> search(@RequestParam("searchCondition") String searchCondition, 
						@RequestParam("searchKeyword") String searchKeyword) {
		BoardVO vo = new BoardVO();
		vo.setSearchCondition(searchCondition);
		vo.setSearchKeyword(searchKeyword);
		
		List<BoardVO> searchResult = null;
	    if("ALL".equals(searchCondition)) {
	        searchResult = boardService.getBoardList(vo);
	    } else if("TITLE".equals(searchCondition)) {
	        searchResult = boardService.getBoardListByTitle(vo);
	    } else if("CONTENT".equals(searchCondition)) {
	        searchResult = boardService.getBoardListByContent(vo);
	    }
	    return searchResult;		
	}
//	//게시판 페이징처리
//	@RequestMapping("/boardPage.do")
//	public String showBoardPage(@RequestParam(name = "curPage", defaultValue="1") int curPage, Model model) {
//		int cnt=0;
//		int numberOfArticles = boardService.get
//		return "boardPage";
//	}
}
