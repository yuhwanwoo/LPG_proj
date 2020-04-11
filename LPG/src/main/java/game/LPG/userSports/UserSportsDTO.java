package game.LPG.userSports;

public class UserSportsDTO {
	private int sportsNo;
	private String userId;
	private String sportsPosition;
	private String sportsTend;
	private String sportsFoot;
	private String teamNo;
	
	public UserSportsDTO() {
		
	}

	public UserSportsDTO(int sportsNo, String userId, String sportsPosition, String sportsTend, String sportsFoot,
			String teamNo) {
		super();
		this.sportsNo = sportsNo;
		this.userId = userId;
		this.sportsPosition = sportsPosition;
		this.sportsTend = sportsTend;
		this.sportsFoot = sportsFoot;
		this.teamNo = teamNo;
	}


	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSportsPosition() {
		return sportsPosition;
	}

	public void setSportsPosition(String sportsPosition) {
		this.sportsPosition = sportsPosition;
	}

	public String getSportsTend() {
		return sportsTend;
	}

	public void setSportsTend(String sportsTend) {
		this.sportsTend = sportsTend;
	}

	public String getSportsFoot() {
		return sportsFoot;
	}

	public void setSportsFoot(String sportsFoot) {
		this.sportsFoot = sportsFoot;
	}

	public String getTeamNo() {
		return teamNo;
	}

	public void setTeamNo(String teamNo) {
		this.teamNo = teamNo;
	}

	@Override
	public String toString() {
		return "UserSportsDTO [sportsNo=" + sportsNo + ", userId=" + userId + ", sportsPosition=" + sportsPosition
				+ ", sportsTend=" + sportsTend + ", sportsFoot=" + sportsFoot + ", teamNo=" + teamNo + "]";
	}

}
