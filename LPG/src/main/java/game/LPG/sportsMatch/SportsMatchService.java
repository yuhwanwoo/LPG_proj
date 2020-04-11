package game.LPG.sportsMatch;

import java.util.List;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

public interface SportsMatchService {
	int insert(SportsMatchDTO sportsMatch);
	List<MatchDetailDTO> matchlist(MatchSelectDTO ms); 
	MatchDetailDTO MatchIndvDetail(String mchNo);
	MatchDetailDTO MatchTeamDetail(String mchNo);
	int backUpNumAdd(SportsMatchTeamDTO smt);
	int matchJoinTeam(SportsMatchTeamDTO smt);
	int matchJoinIndiv(SportsMatchTeamDTO smt);
	SportsMatchDTO matchChange(String mchNo);
	int matchChangeOk(SportsMatchDTO sportsMatch);
	int matchDelete(String mchNo);
	TeamMemberDTO teamNoSearch(UserSportsDTO su);
}
