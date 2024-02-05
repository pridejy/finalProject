package com.finalproject.www;

import com.finalproject.www.faqBoard.faqBoardVO;
import com.finalproject.www.faqBoard.impl.faqBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class faqBoardController {
   @Autowired
   private faqBoardService faqBoardService;

   public faqBoardController() {
   }

   @RequestMapping("/getfaqBoardList.do")
   public String getfaqBoardList(faqBoardVO vo, Model model) {
      if (vo.getSearchCondition() == null) {
         vo.setSearchCondition("TITLE");
      }

      if (vo.getSearchKeyword() == null) {
         vo.setSearchKeyword("");
      }

      model.addAttribute("faqBoardList", this.faqBoardService.getfaqBoardList(vo));
      return "faqList";
   }
}
