package com.finalproject.www;

import com.finalproject.www.manager.ManagerVO;
import com.finalproject.www.manager.impl.ManagerService;
import com.finalproject.www.user.UserVO;
import com.finalproject.www.user.impl.UserService;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private ManagerService managerService;

	public UserController() {
	}
	//메인 페이지 이동
	@RequestMapping("/main.do")
	public String mainPage() {
		return "main";
	}
	//소개 페이지 이동
	@RequestMapping("/introPage.do")
	public String introPage() {
		return "introPage";
	}
	//위치 페이지 이동
	@RequestMapping("/location.do")
	public String locationPage() {
		return "locationPage";
	}
	//이벤트 & 프로모션 페이지 이동
	@RequestMapping("/EventAndPromotion.do")
	public String EventAndPromotionPage() {
		return "EventAndPromotion";
	}
	//로그인 페이지 이동
	@RequestMapping("/loginPage.do")
	public String loginPage() {
		return "login";
	}
	//회원가입 페이지 이동
	@RequestMapping("/registerPage2.do")
	public String registerPage2() {
		return "register_02";
	}	
	//회원가입 완료 페이지 이동
	@RequestMapping("/registerPage3.do")
	public String registerPage3() {
		return "register_03";
	}
	//아이디 찾기 페이지 이동
	@RequestMapping("/findIdPage.do")
	public String findIdPage() {
		return "findId";
	}
	//비밀번호 찾기 페이지 이동
	@RequestMapping("/findPwPage.do")
	public String findPwPage() {
		return "findPW";
	}
	//회원정보 수정 페이지 이동
	@RequestMapping("/modifyUserPage.do")
	public String myPage() {
		return "modifyUser_01";
	}
	//회원정보 수정 페이지2 이동
	@RequestMapping("/modfiyUser_02.do")
	public String modifyUserPage(HttpSession session, Model model) {
		UserVO user = (UserVO) session.getAttribute("user");
		//이메일
		String[] emailParts = user.getEmail().split("@");
		String email1 = emailParts[0];
		String email2 = emailParts[1];
		//핸드폰번호
		String[] phoneParts = user.getPhone().split("-");
		String phone1 = phoneParts[0];
		String phone2 = phoneParts[1];
		String phone3 = phoneParts[2];
		//영어이름
		String[] EnameParts = user.getEname().split(" ");
		String firstName = EnameParts[0];
		String lastName = EnameParts[1];
	   
		model.addAttribute("email1", email1);
		model.addAttribute("email2", email2);
		model.addAttribute("phone1", phone1);
		model.addAttribute("phone2", phone2);
		model.addAttribute("phone3", phone3);
		model.addAttribute("firstName", firstName);
		model.addAttribute("lastName", lastName);
		return "modifyUser_02";
	}
	//회원가입 완료페이지 이동
	@RequestMapping("/register.do")
	public String insertUser(@RequestParam("email1") String email1,
                            @RequestParam("email2") String email2,
                            @RequestParam("phone1") String phone1,
                            @RequestParam("phone2") String phone2,
                            @RequestParam("phone3") String phone3,
                            @RequestParam("firstName") String firstName,
                            @RequestParam("lastName") String lastName, UserVO vo) {
       vo.setEmail(email1 + "@" + email2);
       vo.setPhone(phone1 + "-" + phone2 + "-" + phone3);
       vo.setEname(firstName + " " + lastName);
       userService.insertUser(vo);
       return "register_03";
    }
	// 로그인
	@RequestMapping("/login.do")
	public String login(@RequestParam("loginType") String loginType, UserVO userVO, ManagerVO managerVO, HttpSession session, Model model, HttpServletRequest request) {
	    if ("user".equals(loginType)) {
	        // 일반 사용자 로그인 처리
	        UserVO user = userService.idCheck(userVO);
	        if (user != null && user.getPassword().equals(userVO.getPassword())) {
	            session.setAttribute("user", user);
	            
	            //원래 페이지로 리다이렉션
	            String returnUrl = request.getParameter("returnUrl");
	            if(returnUrl != null && !returnUrl.isEmpty()) {
	            	return "redirect:" + returnUrl;
	            }else {
	            	return "main";
	            }
	            
	      
	        } else {
	            model.addAttribute("errorMessage", "일반 사용자 로그인 실패 메시지");
	            return "loginfailed";
	        }
	    } else if ("manager".equals(loginType)) {
	        // 관리자 로그인 처리
	        ManagerVO manager = managerService.idCheck(managerVO);
	        if (manager != null && manager.getPassword().equals(managerVO.getPassword())) {
	            session.setAttribute("manager", manager);
	            return "admin/adminPage";  // 관리자 페이지로 리다이렉션
	        } else {
	            model.addAttribute("errorMessage", "관리자 로그인 실패 메시지");
	            return "loginfailed";
	        }
	    } else {
	        model.addAttribute("errorMessage", "유효하지 않은 로그인 타입입니다.");
	        return "loginfailed";
	    }
	}

   //로그아웃
   @RequestMapping("/logout.do")
   public String logout(HttpSession session) {
      session.invalidate();
      return "main";
   }
   //비밀번호 체크
   @RequestMapping("/checkPassword.do")
   public void checkPassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
      String userId = request.getParameter("userId");
      String enteredPassword = request.getParameter("enteredPassword");
      UserVO user = userService.getUserById(userId);
     
      boolean isPasswordMatch = user.getPassword().equals(enteredPassword);
      
      response.setContentType("text/plain");
      response.setCharacterEncoding("UTF-8");
      response.getWriter().write(String.valueOf(isPasswordMatch));
   }
   //아이디 체크
   @RequestMapping("/idCheck.do")
   @ResponseBody
   public String idCheck(@RequestParam("id") String id){
	   int result = userService.idChk(id);
	   if(result == 1) {
		   return "0";
	   }else {
		   return "1";
	   }
   }
   //아이디 찾기
   @ResponseBody
   @RequestMapping("/findId.do")
   public String findId(@RequestParam("f_name") String name, 
		   				@RequestParam("f_email") String email) {
       UserVO foundId = userService.findIdByNameAndEmail(name, email);
       if (foundId != null) {
           return foundId.getId();
       }
       return "false";
   }
   //비밀번호 찾기
   @RequestMapping("/findPw.do")
   @ResponseBody
   public String findPw(@RequestParam("f_id") String id, 
		   				@RequestParam("f_name") String name, 
		   				@RequestParam("f_email") String email
		   				) {
	   UserVO foundPw = userService.findPw(id, name, email);
	   if(foundPw != null) {
		   return foundPw.getPassword();
		 
	   }
	   return "false";
   }
   //회원정보 수정
   @RequestMapping("/modifyUser.do")
   public String modifyUser(UserVO vo, @RequestParam("email1") String email1,
								       @RequestParam("email2") String email2,
								       @RequestParam("phone1") String phone1,
								       @RequestParam("phone2") String phone2,
								       @RequestParam("phone3") String phone3,
								       @RequestParam("firstName") String firstName,
								       @RequestParam("lastName") String lastName,
								       @RequestParam("password2") String password2){								    
	   vo.setEmail(email1+"@"+email2);
	   vo.setPhone(phone1+"-"+phone2+"-"+phone3);
	   vo.setEname(firstName+" "+lastName);
	   vo.setPassword(password2);
	   userService.updateUser(vo);
	   return "main";
   }
   
   //회원삭제
   @RequestMapping("/deleteUser.do")
   public String deleteUser(UserVO vo, HttpSession session) {
      userService.deleteUser(vo);
      session.invalidate();
      return "main";
   }
   //언어변경
//   @RequestMapping("/kor.do")
//   public String kor(HttpServletRequest request, @RequestParam)
}