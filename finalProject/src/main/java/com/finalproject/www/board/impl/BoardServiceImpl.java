package com.finalproject.www.board.impl;

import com.finalproject.www.board.BoardVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
   @Autowired
   private BoardDAOMyBatis boardDAO;

   public BoardServiceImpl() {
   }
   @Override
   public void insertBoard(BoardVO vo) {
      boardDAO.insertBoard(vo);
   }
   @Override
   public void updateBoard(BoardVO vo) {
	   boardDAO.updateBoard(vo);
   }
   @Override
   public void updateBoardHit(int seq) {
	   boardDAO.updateBoardHit(seq);
   }
   @Override
   public void deleteBoard(int seq) {
	   boardDAO.deleteBoard(seq);
   }
   @Override
   public BoardVO getBoard(BoardVO vo) {
      return boardDAO.getBoard(vo);
   }
   @Override
   public List<BoardVO> getBoardList(BoardVO vo) {
      return boardDAO.getBoardList(vo);
   }
   @Override
   public List<BoardVO> getBoardListByTitle(BoardVO vo){
	   return boardDAO.getBoardListByTitle(vo);
   }
   @Override
   public List<BoardVO> getBoardListByContent(BoardVO vo){
	   return boardDAO.getBoardListByContent(vo);
   }
   @Override
   public List<BoardVO> getAllBoardList(BoardVO vo){
	   return boardDAO.getAllBoardList(vo);
   }
}
