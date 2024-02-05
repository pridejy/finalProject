package com.finalproject.www.user.impl;

import com.finalproject.www.user.UserVO;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOBatis {
   @Autowired
   private SqlSessionTemplate mybatis;

   public UserDAOBatis() {
   }
   
   public void insertUser(UserVO vo) {
	   mybatis.insert("UserDAO.insertUser", vo);
   }
   
   public void updateUser(UserVO vo) {
	   mybatis.update("UserDAO.updateUser", vo);
   }

   public UserVO idCheck(UserVO vo) {
	   return (UserVO)mybatis.selectOne("UserDAO.idCheck", vo);
   }
   public UserVO findIdByNameAndEmail(String name, String email) {
	    Map<String, Object> params = new HashMap<>();
	    params.put("name", name);
	    params.put("email", email);
	    
	    return mybatis.selectOne("UserDAO.findId", params);
   }
   public UserVO findPw(String id, String name, String email) {
	   Map<String, String> params = new HashMap<>();
	   params.put("id", id);
	   params.put("name", name);
	   params.put("email", email);
	   
	   return mybatis.selectOne("UserDAO.findPw", params);
   }
   
   public int idChk(String id) {
	   return mybatis.selectOne("UserDAO.idChk", id);
   }	  

   public void deleteUser(UserVO vo) {
	   mybatis.delete("UserDAO.deleteUser", vo);
   }

   public UserVO getUserById(String userId) {
	   return (UserVO)mybatis.selectOne("UserDAO.getUserById", userId);
   }
   public List<UserVO> getAllUser(UserVO vo) {
	   return mybatis.selectList("UserDAO.getAllUser", vo);
   }
}
