package com.finalproject.www.board.impl;

import com.finalproject.www.board.BoardVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOMyBatis {
   @Autowired
   private SqlSessionTemplate mybatis;

   public BoardDAOMyBatis() {
   }

   public void insertBoard(BoardVO vo) {
	   mybatis.insert("BoardDAO.insertBoard", vo);
   }
   public void replyBoard(BoardVO vo) {
	   mybatis.insert("BoardDAO.replyBoard", vo);
   }
   public void updateBoard(BoardVO vo) {
	   mybatis.update("BoardDAO.updateBoard", vo);
   }
   public void updateStepNumBoard(BoardVO vo) {
	   mybatis.update("BoardDAO.update_stepNum", vo);
   }
   public void updateBoardHit(int seq) {
	   mybatis.update("BoardDAO.updateBoardHit", seq);
   }
   public void deleteBoard(int seq) {
	   mybatis.delete("BoardDAO.deleteBoard", seq);
   }
   public BoardVO getBoard(BoardVO vo) {
      return (BoardVO)mybatis.selectOne("BoardDAO.getBoard", vo);
   }
   public List<BoardVO> getBoardList(BoardVO vo) {
      return mybatis.selectList("BoardDAO.getBoardList", vo);
   }
   //제목 검색
   public List<BoardVO> getBoardListByTitle(BoardVO vo){
	   return mybatis.selectList("BoardDAO.getBoardListByTitle", vo);
   }
   //내용 검색
   public List<BoardVO> getBoardListByContent(BoardVO vo){
	   return mybatis.selectList("BoardDAO.getBoardListByContent", vo);
   }
   //게시판 전체
   public List<BoardVO> getAllBoardList(BoardVO vo){
	   return mybatis.selectList("BoardDAO.getAllBoardList", vo);
   }
   
//   public List<BoardVO> getBoardListPaging(int curPage, int itemsPerPage) {
//	      Map<String, Integer> map = new HashMap<>();
//	      map.put("start", (curPage - 1) * itemsPerPage + 1);
//	      map.put("end", curPage * itemsPerPage);
//	      return mybatis.selectList("BoardDAO.getBoardListPaging", map);
//   }
//
//   // 전체 페이지 수 계산을 위한 메서드: 총 게시물 수를 기반으로 페이지 수 계산
//   public int getTotalPageCount(int itemsPerPage) {
//      int totalBoardCount = mybatis.selectOne("BoardDAO.getTotalBoardCount");
//      return (int) Math.ceil((double) totalBoardCount / itemsPerPage);
//   }
}