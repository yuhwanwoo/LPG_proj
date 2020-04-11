package game.LPG.sportsMatch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

@Service
public class SportsMatchServiceImpl implements SportsMatchService {
	@Autowired
	@Qualifier("sportsMatchDAO")
	SportsMatchDAO dao;
	
	@Override
	public int insert(SportsMatchDTO sportsMatch) {
		int result = 0;
		if(sportsMatch.getMchType().equals("0")) {
			System.out.println("servicecs"+sportsMatch);
			result = dao.insert(sportsMatch);
			System.out.println(result);
			result= result+ dao.insertTeam(sportsMatch);
			System.out.println(result);
			return result;
		}else if(sportsMatch.getMchType().equals("1")){
			System.out.println("servicecs"+sportsMatch);
			result = dao.insert(sportsMatch);
			System.out.println(result);
			result= result+ dao.insertIndiv(sportsMatch);
			System.out.println(result);
			return result;
		}else {
			return result;
		}
	}
	
	@Override
	public List<MatchDetailDTO> matchlist(MatchSelectDTO ms) {
		System.out.println("service:"+ms);
		return dao.matchlist(ms);
	}
	
	@Override
	public MatchDetailDTO MatchIndvDetail(String mchNo) {
		MatchDetailDTO list = dao.MatchIndvDetail(mchNo); 
		return list;
	}
	
	@Override
	public MatchDetailDTO MatchTeamDetail(String mchNo) {
		MatchDetailDTO list = dao.MatchTeamDetail(mchNo); 
		return list;
	}
	
	@Override
	public int backUpNumAdd(SportsMatchTeamDTO smt) {
		System.out.println("서비스:"+smt);
		return dao.backUpNumAdd(smt);
	}

	@Override
	public TeamMemberDTO teamNoSearch(UserSportsDTO su) {
		return dao.teamNoSearch(su);
	}
	@Override
	public int matchJoinTeam(SportsMatchTeamDTO smt) {
		System.out.println("서비스:"+smt);
		int result = dao.matchJoinTeam(smt);
		System.out.println("서비스 결과:"+result);
		return result;
	}
	
	@Override
	public int matchJoinIndiv(SportsMatchTeamDTO smt) {
		System.out.println("서비스:"+smt);
		int result = dao.matchJoinIndiv(smt);
		System.out.println("서비스 결과:"+result);
		return result;
	}

	@Override
	public SportsMatchDTO matchChange(String mchNo) {
		SportsMatchDTO sm = dao.matchChange(mchNo);
		System.out.println(sm);
		return sm;
	}

	@Override
	public int matchChangeOk(SportsMatchDTO sportsMatch) {
		int result = dao.matchChangeOk(sportsMatch);
		return result;
	}

	@Override
	public int matchDelete(String mchNo) {
		return dao.matchDelete(mchNo);
	}

}
