package game.LPG.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

@Controller
public class UserController {
	@Autowired
	UserService service;
	//로그인
	@RequestMapping(value="/user/login.do", method=RequestMethod.GET)
	public String loginPage() {
		return "login";
	}
	//로그인
	@RequestMapping(value="/user/login.do", method=RequestMethod.POST)
	public ModelAndView login(UserDTO loginUserInfo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		UserDTO user = service.login(loginUserInfo);
		UserSportsDTO su = service.login2(loginUserInfo);
		/*UserSportsDTO su2 = service.login3(loginUserInfo);*/
		System.out.println(user);
		System.out.println(su);
		String viewName = "";
		if(user!=null) {
			HttpSession ses = request.getSession();
			ses.setAttribute("loginUserInfo", user);
			if(su!=null) {
				ses.setAttribute("userSports", su);
				viewName = "redirect:/match.do";
			}else {
				viewName = "redirect:/match/userSports.do";
			}
		}else {
			viewName = "login";
		}
		mav.setViewName(viewName);
		 return mav;
	}
	//로그아웃
	@RequestMapping("/user/logout.do")
	public String logout(HttpSession session) {
		if(session!=null) {
			session.invalidate();
		}
		return "redirect:/user/login.do";
	}
	//회원가입 정보입력
	@RequestMapping(value="/user/signup.do", method=RequestMethod.GET)
	public String insertView() {
		return "signup";
	}
	@RequestMapping(value="/user/signup.do", method=RequestMethod.POST)
	public String signUp(UserDTO signupInfo) {
		System.out.println("signupInfo테스트"+signupInfo);
		signupInfo.setUserEmailAgree("1");
		int result = service.signup(signupInfo);
		System.out.println("result 값"+result);
		return "redirect:/user/login.do";
	}
	
	//회원가입 아이디 중복검사
	@RequestMapping(value="/user/joinIdCheck.do", method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String idCheck(UserDTO findidInfo, HttpServletRequest request) {
		UserDTO userId = service.joinIdCheck(findidInfo);
		int check_value = userId.getCheckValue();
		
		String return_message = "";
		
		System.out.println(check_value+"dd");
		
		if(check_value == 0) {
			return_message = "success";
		}else {
			return_message = "fail";
		}
		
		return return_message;
	}
	//기본정보조회 전 현재 비밀번호 확인
	@RequestMapping(value="/user/myinfoPWCheck.do", method=RequestMethod.GET)
	public String myinfoPWCheckView() {
	
	return  "myinfoPWCheck";
	}
	
	@RequestMapping(value="/user/myinfoPWCheck.do", method=RequestMethod.POST)
	//@ResponseBody
	public ModelAndView myinfoPWCheck(UserDTO ppc) {
		System.out.println("컨트롤러"+ppc);
		ModelAndView mav = new ModelAndView();
		UserDTO userPw = service.myinfoPWCheck(ppc);
		int check_value = userPw.getCheckValue();
		String viewName = "";
		if(check_value > 0) {
			viewName = "redirect:/user/myinfo.do"; 
		}else {
			viewName = "myinfoPWCheck";
		}
		mav.setViewName(viewName);
		return mav;
	}


	//기본정보 조회수정
	@RequestMapping(value="/user/myinfo.do", method=RequestMethod.GET)
	public String myInfoView() {
		
		return "myinfo";
	}
	//기본정보 조회수정
	@RequestMapping(value="/user/myinfo.do", method=RequestMethod.POST)
	public String updateMyInfo(HttpSession session, UserDTO updateInfo) {
		
		System.out.println("updateController"+updateInfo);
		
		//session에서 user데이터 userid 받아오기
		UserDTO sessionUser = (UserDTO)session.getAttribute("loginUserInfo");
		updateInfo.setUserId(sessionUser.getUserId());
		
		//update 하기
		UserDTO updatedUser = service.update(updateInfo);
		System.out.println("업데이트 된 세션 유저 값"+updatedUser);
		
		//session 업데이트하기
		
		
		return "redirect:/match.do";
	}
	
	//회원가입 동의
	@RequestMapping(value="/user/signagree.do", method=RequestMethod.GET)
	public String signAgree(){
		return "sigupagree";
	}
	//아이디 찾기 뷰
	@RequestMapping(value="/user/findId.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String findIdView() {
		return "findId";
	}
	
	//아이디 찾기
	@RequestMapping(value="/user/findIdSearch.do", method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String findId(UserDTO findidInfo, HttpServletRequest request) {
		UserDTO userId = service.findID(findidInfo);
		String user_id = userId.getUserId();
		
		return user_id;
	}
	
	//비밀번호 찾기
	@RequestMapping(value="/user/findPass.do", method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String findPass(UserDTO findpassInfo, HttpServletRequest request) {
		UserDTO receive_dto = service.findPass(findpassInfo);
		
		int check_value = receive_dto.getCheckValue();
		
		String return_message = "";
		
		if(check_value > 0) {
			return_message = "success";
		}
		
		return return_message;
	}
	//
	@RequestMapping(value="/user/find_IDPass_modify.do", method={RequestMethod.POST,RequestMethod.GET})
	public String find_IDPass_modify(Model model, HttpServletRequest request){
		
		String userId = request.getParameter("userId");
		model.addAttribute("hidden_userId",userId);
		
		return "find_IDPass_modify";
	}
	
	@RequestMapping(value="/user/modifyPassword.do", method=RequestMethod.POST)
	@ResponseBody
	public String modifyPassword(HttpSession session, UserDTO updateInfo, HttpServletRequest request) {
		System.out.println("패스워드 업데이트");
		
		String hidden_userId = request.getParameter("hidden_userId");
		updateInfo.setUserId(hidden_userId);
		
		//update 하기
		UserDTO updateUserPassword = service.updateUserPassword(updateInfo);
		
		return "success";
	}
	

}