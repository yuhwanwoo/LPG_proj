package game.LPG.userSports;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserSportsController {
	@Autowired
	UserSportsService service;
	@RequestMapping(value="/match/userSports.do", method=RequestMethod.GET)
	public String userSportsView() {
		return "userSports";
	}
	@RequestMapping(value="/match/userSports.do", method=RequestMethod.POST)
	public String insert(UserSportsDTO userSports, HttpServletRequest requst) {
		System.out.println("************+board");
		System.out.println("컨트롤러스포츠유저"+userSports);
		UserSportsDTO result = service.insert(userSports);
		System.out.println("반환세션값제발~~~"+result);
		if(result!=null) {
			HttpSession ses = requst.getSession();
			ses.setAttribute("userSports", result);
			return "redirect:/match.do";
		}else {
			 return "";
		}
	}
}
	
