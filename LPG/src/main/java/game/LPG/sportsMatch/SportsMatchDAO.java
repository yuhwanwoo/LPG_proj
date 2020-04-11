package game.LPG.sportsMatch;

import java.util.List;

import game.LPG.soccerteam.TeamMemberDTO;
import game.LPG.userSports.UserSportsDTO;

public interface SportsMatchDAO {
	int insert(SportsMatchDTO sportsMatch);
	int insertIndiv(SportsMatchDTO sportsMatch);
	int insertTeam(SportsMatchDTO sportsMatch);
	TeamMemberDTO teamNoSearch(UserSportsDTO su);
	List<MatchDetailDTO> matchlist(MatchSelectDTO ms);
	MatchDetailDTO MatchIndvDetail(String mchNo);
	MatchDetailDTO MatchTeamDetail(String mchNo);
	int backUpNumAdd(SportsMatchTeamDTO smt);
	int matchJoinTeam(SportsMatchTeamDTO smt);
	int matchJoinIndiv(SportsMatchTeamDTO smt);
	SportsMatchDTO matchChange(String mchNo);
	int matchChangeOk(SportsMatchDTO sportsMatch);
	int matchDelete(String mchNo);
}
