package game.LPG.soccerteam;

public class TeamMemberDTO {

   private String userName;
   private String tmNo;
   private String tmJoindate;
   private String tmGrade;
   private String sportsNo;
   private String teamNo;
   private String tmTend;
   private String tmAbility;
   private String backNum;
   private String count;
   private String memstat;
   
   public TeamMemberDTO() {
      
   }

public TeamMemberDTO(String userName, String tmNo, String tmJoindate, String tmGrade, String sportsNo, String teamNo,
		String tmTend, String tmAbility, String backNum, String count, String memstat) {
	super();
	this.userName = userName;
	this.tmNo = tmNo;
	this.tmJoindate = tmJoindate;
	this.tmGrade = tmGrade;
	this.sportsNo = sportsNo;
	this.teamNo = teamNo;
	this.tmTend = tmTend;
	this.tmAbility = tmAbility;
	this.backNum = backNum;
	this.count = count;
	this.memstat = memstat;
}

public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
}

public String getTmNo() {
	return tmNo;
}

public void setTmNo(String tmNo) {
	this.tmNo = tmNo;
}

public String getTmJoindate() {
	return tmJoindate;
}

public void setTmJoindate(String tmJoindate) {
	this.tmJoindate = tmJoindate;
}

public String getTmGrade() {
	return tmGrade;
}

public void setTmGrade(String tmGrade) {
	this.tmGrade = tmGrade;
}

public String getSportsNo() {
	return sportsNo;
}

public void setSportsNo(String sportsNo) {
	this.sportsNo = sportsNo;
}

public String getTeamNo() {
	return teamNo;
}

public void setTeamNo(String teamNo) {
	this.teamNo = teamNo;
}

public String getTmTend() {
	return tmTend;
}

public void setTmTend(String tmTend) {
	this.tmTend = tmTend;
}

public String getTmAbility() {
	return tmAbility;
}

public void setTmAbility(String tmAbility) {
	this.tmAbility = tmAbility;
}

public String getBackNum() {
	return backNum;
}

public void setBackNum(String backNum) {
	this.backNum = backNum;
}

public String getCount() {
	return count;
}

public void setCount(String count) {
	this.count = count;
}

public String getMemstat() {
	return memstat;
}

public void setMemstat(String memstat) {
	this.memstat = memstat;
}

@Override
public String toString() {
	return "TeamMemberDTO [userName=" + userName + ", tmNo=" + tmNo + ", tmJoindate=" + tmJoindate + ", tmGrade="
			+ tmGrade + ", sportsNo=" + sportsNo + ", teamNo=" + teamNo + ", tmTend=" + tmTend + ", tmAbility="
			+ tmAbility + ", backNum=" + backNum + ", count=" + count + ", memstat=" + memstat + "]";
}

   
   
}