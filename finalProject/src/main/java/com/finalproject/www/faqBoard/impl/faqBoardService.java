package com.finalproject.www.faqBoard.impl;

import com.finalproject.www.faqBoard.faqBoardVO;
import java.util.List;

public interface faqBoardService {
   void insertFaqBoard(faqBoardVO var1);

   void updateFaqBoard(faqBoardVO var1);

   void deleteFaqBoard(faqBoardVO var1);

   faqBoardVO getfaqBoard(faqBoardVO var1);

   List<faqBoardVO> getfaqBoardList(faqBoardVO var1);
}
