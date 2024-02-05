package com.finalproject.www.faqBoard.impl;

import com.finalproject.www.faqBoard.faqBoardVO;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("faqBoardService")
public class faqBoardServiceImpl implements faqBoardService {
   @Autowired
   private faqBoardDAOMyBatis faqBoardDAO;

   public faqBoardServiceImpl() {
   }

   public void insertFaqBoard(faqBoardVO vo) {
      this.faqBoardDAO.insertFaqBoard(vo);
   }

   public void updateFaqBoard(faqBoardVO vo) {
      this.faqBoardDAO.updateFaqBoard(vo);
   }

   public void deleteFaqBoard(faqBoardVO vo) {
      this.faqBoardDAO.deleteFaqBoard(vo);
   }

   public faqBoardVO getfaqBoard(faqBoardVO vo) {
      return this.faqBoardDAO.getfaqBoard(vo);
   }

   public List<faqBoardVO> getfaqBoardList(faqBoardVO vo) {
      return this.faqBoardDAO.getfaqBoardList(vo);
   }
}
