package com.finalproject.www.user.impl;

import com.finalproject.www.user.UserVO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserServiceImpl implements UserService {
   @Autowired
   private UserDAOBatis userDAO;

   public UserServiceImpl() {
   }

   public void insertUser(UserVO vo) {
      userDAO.insertUser(vo);
   }

   public void updateUser(UserVO vo) {
      userDAO.updateUser(vo);
   }

   public UserVO idCheck(UserVO vo) {
      return userDAO.idCheck(vo);
   }
   public int idChk(String id) {
	   int result = userDAO.idChk(id);
	   return result;
   }
   public UserVO findIdByNameAndEmail(String name, String email) {
      return userDAO.findIdByNameAndEmail(name, email);
   }
   public UserVO findPw(String id, String name, String email) {
	   return userDAO.findPw(id, name, email);
   }

   public void deleteUser(UserVO vo) {
	   userDAO.deleteUser(vo);
   }

   public UserVO getUserById(String userId) {
      return userDAO.getUserById(userId);
   }
   public List<UserVO> getAllUser(UserVO vo){
	   return userDAO.getAllUser(vo);
   }
}
