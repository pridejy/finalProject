package com.finalproject.www.user.impl;

import java.util.List;

import com.finalproject.www.user.UserVO;

public interface UserService {
   void insertUser(UserVO vo);

   void updateUser(UserVO vo);

   UserVO idCheck(UserVO vo);
   
   int idChk(String id);

   UserVO findIdByNameAndEmail(String name, String email);
   
   UserVO findPw(String id, String name, String email);

   void deleteUser(UserVO vo);

   UserVO getUserById(String vo);
   
   List<UserVO> getAllUser(UserVO vo);
}
