package game.LPG.sportsMatch;

import java.util.ArrayList;
import java.util.List;

import game.LPG.ground.GroundDTO;
import game.LPG.soccerteam.TeamDTO;
import game.LPG.userSports.UserSportsDTO;

public class MatchDetailDTO {
	private SportsMatchDTO sportsMatch;
	private GroundDTO ground;
	private List<TeamDTO> team;
	private List<UserSportsDTO> userSports;
	
	public MatchDetailDTO() {
		
	}
	
	public MatchDetailDTO(SportsMatchDTO sportsMatch, GroundDTO ground, List<TeamDTO> team) {
		super();
		this.sportsMatch = sportsMatch;
		this.ground = ground;
		this.team = team;
	}

	public MatchDetailDTO(SportsMatchDTO sportsMatch, GroundDTO ground, List<TeamDTO> team,
			ArrayList<UserSportsDTO> userSports) {
		super();
		this.sportsMatch = sportsMatch;
		this.ground = ground;
		this.team = team;
		this.userSports = userSports;
	}

	@Override
	public String toString() {
		return "MatchDetailDTO [sportsMatch=" + sportsMatch + ", ground=" + ground + ", team=" + team + ", userSports="
				+ userSports + "]";
	}

	public SportsMatchDTO getSportsMatch() {
		return sportsMatch;
	}

	public void setSportsMatch(SportsMatchDTO sportsMatch) {
		this.sportsMatch = sportsMatch;
	}

	public GroundDTO getGround() {
		return ground;
	}

	public void setGround(GroundDTO ground) {
		this.ground = ground;
	}

	public List<TeamDTO> getTeam() {
		return team;
	}

	public void setTeam(List<TeamDTO> team) {
		this.team = team;
	}

	public List<UserSportsDTO> getUserSports() {
		return userSports;
	}

	public void setUserSports(List<UserSportsDTO> userSports) {
		this.userSports = userSports;
	}
	
}
