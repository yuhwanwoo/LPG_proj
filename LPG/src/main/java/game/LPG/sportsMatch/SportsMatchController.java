package game.LPG.sportsMatch;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import game.LPG.soccerteam.TeamDTO;
import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.soccerteam.TeamService;
import game.LPG.userSports.UserSportsDTO;

@Controller
public class SportsMatchController {
	@Autowired
	SportsMatchService service;
	@Autowired
	TeamService tService;
	
	@RequestMapping("/match.do")
	public String match() {
		return "match";
	}
	
	@RequestMapping(value="/match/matchResist.do", method=RequestMethod.GET)
	public ModelAndView viewMatchResist(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		UserSportsDTO su = (UserSportsDTO)session.getAttribute("userSports");
		TeamMemberDTO teamNoSearch = service.teamNoSearch(su);
		System.out.println(teamNoSearch.getSportsNo());
		mav.addObject("teamNoSearch", teamNoSearch);
		mav.setViewName("matchResist");
		return mav;
	}
	
	@RequestMapping(value="/match/matchResist.do", method=RequestMethod.POST)
	public String insert(SportsMatchDTO sportsMatch) {
		System.out.println("***************시작");
		System.out.println("컨트롤러:"+sportsMatch);
		int result =service.insert(sportsMatch);
		System.out.println("controller:"+result);
		return "redirect:/match.do";
	}
	
	
	@RequestMapping("/match/mchTeamYong.do")
	public String mchTeamYong() {
		return "mchTeamYong";
	}
	
	@RequestMapping(value="/match/list.do", method=RequestMethod.GET)
	public ModelAndView matchlist(MatchSelectDTO ms) {
		ModelAndView mav = new ModelAndView();
		System.out.println("검색한 값=>"+ms);
		List<MatchDetailDTO> list = service.matchlist(ms);
		System.out.println("결과 값=>"+list);
		mav.addObject("matchlist", list);
		if(ms.getMchType().equals("0")) {
			mav.setViewName("listTeam");
		}else {
			mav.setViewName("listIndiv");
		}
		return mav;
	}
	@RequestMapping("/match/mchIndvDetail.do")
	public ModelAndView mchIndvDetail(String mchNo) {
		System.out.println("mchNo=>"+mchNo);
		ModelAndView mav = new ModelAndView();
		
		MatchDetailDTO list = service.MatchIndvDetail(mchNo);
		System.out.println(list);
		mav.addObject("mchIndivDetail", list);
		mav.setViewName("mchIndvDetail");
		
		return mav;
	}
	
	@RequestMapping(value="/match/mchTeamDetail.do")
	public ModelAndView mchTeamDetail(String mchNo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mchNo);
		
		UserSportsDTO su = (UserSportsDTO)session.getAttribute("userSports");
		System.out.println(Integer.toString(su.getSportsNo()));
		MatchDetailDTO list = service.MatchTeamDetail(mchNo);
		TeamMemberDTO tm = tService.Grade(Integer.toString(su.getSportsNo()));
		System.out.println("teammember:"+tm);
		System.out.println("controller=>"+list);
		mav.addObject("mchTeamDetail", list);
		mav.addObject("teamMember", tm);
		mav.setViewName("mchTeamDetail");
		return mav;
	}
	@RequestMapping(value="/match/backUpNumAdd.do", method=RequestMethod.GET, produces="application/text;charset=utf-8")
	public @ResponseBody String backUpNumAdd(SportsMatchTeamDTO smt) {
		System.out.println("컨트롤러:"+smt);
		int result = service.backUpNumAdd(smt);
		System.out.println(result);
		return result+"";
	}
	
	@RequestMapping("/match/joinTeam.do")
	public String matchJoinTeam(SportsMatchTeamDTO smt) {
		System.out.println("컨트롤러:"+smt);
		String mchNo = smt.getMchNo();
		int result = service.matchJoinTeam(smt);
		System.out.println(result);
		return "redirect:/match/mchTeamDetail.do?mchNo="+mchNo;
	}
	
	@RequestMapping("/match/joinIndiv.do")
	public String matchJoinIndiv(SportsMatchTeamDTO smt) {
		System.out.println("컨트롤러:"+smt);
		int result = service.matchJoinIndiv(smt);
		System.out.println(result);
		return "redirect:/match/mchIndvDetail.do";
	}
	
	@RequestMapping("/match/change.do")
	public ModelAndView matchChange(String mchNo) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mchNo);
		SportsMatchDTO smt = service.matchChange(mchNo);
		System.out.println("컨트롤러:"+smt);
		mav.addObject("matchChange", smt);
		mav.setViewName("mchChange");
		return mav;
	}
	
	@RequestMapping("/match/changeOk.do")
	public String matchChangeOk(SportsMatchDTO sportsMatch) {
		System.out.println("컨트롤러:"+sportsMatch);
		int result = service.matchChangeOk(sportsMatch);
		System.out.println(result);
		return "redirect:/match/mchTeamDetail.do?mchNo="+sportsMatch.getMchNo();
	}
	
	public String matchDelete(String mchNo) {
		service.matchDelete(mchNo);
		return "redirect:/match.do";
	}
}
