package game.LPG.sportsMatch;

public class SportsMatchTeamDTO {
	String mchTeamNo;
	String mchNo;
	String teamNo;
	String backupNum;
	String homeAway;
	
	
	public SportsMatchTeamDTO() {
		super();
	}

	public SportsMatchTeamDTO(String mchTeamNo, String mchNo, String teamNo, String backupNum, String homeAway) {
		super();
		this.mchTeamNo = mchTeamNo;
		this.mchNo = mchNo;
		this.teamNo = teamNo;
		this.backupNum = backupNum;
		this.homeAway = homeAway;
	}


	public String getMchTeamNo() {
		return mchTeamNo;
	}



	public void setMchTeamNo(String mchTeamNo) {
		this.mchTeamNo = mchTeamNo;
	}



	public String getMchNo() {
		return mchNo;
	}



	public void setMchNo(String mchNo) {
		this.mchNo = mchNo;
	}



	public String getTeamNo() {
		return teamNo;
	}



	public void setTeamNo(String teamNo) {
		this.teamNo = teamNo;
	}



	public String getBackupNum() {
		return backupNum;
	}



	public void setBackupNum(String backupNum) {
		this.backupNum = backupNum;
	}

	public String getHomeAway() {
		return homeAway;
	}

	public void setHomeAway(String homeAway) {
		this.homeAway = homeAway;
	}

	@Override
	public String toString() {
		return "SportsMatchTeamDTO [mchTeamNo=" + mchTeamNo + ", mchNo=" + mchNo + ", teamNo=" + teamNo + ", backupNum="
				+ backupNum + ", homeAway=" + homeAway + "]";
	}

	
}
