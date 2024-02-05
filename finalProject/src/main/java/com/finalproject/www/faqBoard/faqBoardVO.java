package com.finalproject.www.faqBoard;

import org.springframework.web.multipart.MultipartFile;

public class faqBoardVO {
   private int seq;
   private String title;
   private String content;
   private String regDate;
   private String searchCondition;
   private String searchKeyword;
   private MultipartFile uploadFile;

   public faqBoardVO() {
   }

   public int getSeq() {
      return this.seq;
   }

   public void setSeq(int seq) {
      this.seq = seq;
   }

   public String getTitle() {
      return this.title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getContent() {
      return this.content;
   }

   public void setContent(String content) {
      this.content = content;
   }

   public String getRegDate() {
      return this.regDate;
   }

   public void setRegDate(String regDate) {
      this.regDate = regDate;
   }

   public String getSearchCondition() {
      return this.searchCondition;
   }

   public void setSearchCondition(String searchCondition) {
      this.searchCondition = searchCondition;
   }

   public String getSearchKeyword() {
      return this.searchKeyword;
   }

   public void setSearchKeyword(String searchKeyword) {
      this.searchKeyword = searchKeyword;
   }

   public MultipartFile getUploadFile() {
      return this.uploadFile;
   }

   public void setUploadFile(MultipartFile uploadFile) {
      this.uploadFile = uploadFile;
   }
}
