package com.finalproject.www.faqBoard.impl;

import com.finalproject.www.faqBoard.faqBoardVO;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class faqBoardDAOMyBatis {
   @Autowired
   private SqlSessionTemplate mybatis;

   public faqBoardDAOMyBatis() {
   }

   public void insertFaqBoard(faqBoardVO vo) {
      this.mybatis.insert("faqBoardDAO.insertfaqBoard", vo);
   }

   public void updateFaqBoard(faqBoardVO vo) {
      this.mybatis.update("faqBoardDAO.updatefaqBoard", vo);
   }

   public void deleteFaqBoard(faqBoardVO vo) {
      this.mybatis.delete("faqBoardDAO.deletefaqBoard", vo);
   }

   public faqBoardVO getfaqBoard(faqBoardVO vo) {
      return (faqBoardVO)this.mybatis.selectOne("faqBoardDAO.gsfaqBoard", vo);
   }

   public List<faqBoardVO> getfaqBoardList(faqBoardVO vo) {
      return this.mybatis.selectList("faqBoardDAO.getfaqBoardList", vo);
   }
}
