package com.finalproject.www.board.impl;

import com.finalproject.www.board.BoardVO;
import java.util.List;

public interface BoardService {
   void insertBoard(BoardVO vo);
   
   void updateBoard(BoardVO vo);

   void updateBoardHit(int seq);
   
   void deleteBoard(int seq);

   BoardVO getBoard(BoardVO vo);

   List<BoardVO> getBoardList(BoardVO vo);
   
   List<BoardVO> getBoardListByTitle(BoardVO vo);
   
   List<BoardVO> getBoardListByContent(BoardVO vo);
   
   List<BoardVO> getAllBoardList(BoardVO vo);
}
