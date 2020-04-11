package game.LPG.soccerteam;

import org.springframework.web.multipart.MultipartFile;

public class TeamDTO {
   private String teamNo;
   private String teamName;
   private String teamIntroduce;
   private String teamLocation;
   private String teamGround;
   private String teamAbility;
   private String teamUniform;
   private String teamManner;
   private String teamStrategy;
   private String teamPre;
   private String teamDate;
   private String teamAge;
   private String teamEmblem;
   private String memberPrivate;
   private String teamGender;
   private int count;
   private MultipartFile upFile;
   private String sportsNo;
   private String homeaway;
   private String backupNum;

   public TeamDTO() {

   }

   public TeamDTO(String teamNo, String teamName, String teamIntroduce, String teamLocation, String teamGround,
		String teamAbility, String teamUniform, String teamManner, String teamStrategy, String teamPre, String teamDate,
		String teamAge, String teamEmblem, String memberPrivate, String teamGender, int count, MultipartFile upFile,
		String sportsNo, String homeaway, String backupNum) {
	super();
	this.teamNo = teamNo;
	this.teamName = teamName;
	this.teamIntroduce = teamIntroduce;
	this.teamLocation = teamLocation;
	this.teamGround = teamGround;
	this.teamAbility = teamAbility;
	this.teamUniform = teamUniform;
	this.teamManner = teamManner;
	this.teamStrategy = teamStrategy;
	this.teamPre = teamPre;
	this.teamDate = teamDate;
	this.teamAge = teamAge;
	this.teamEmblem = teamEmblem;
	this.memberPrivate = memberPrivate;
	this.teamGender = teamGender;
	this.count = count;
	this.upFile = upFile;
	this.sportsNo = sportsNo;
	this.homeaway = homeaway;
	this.backupNum = backupNum;
}


public String getTeamNo() {
      return teamNo;
   }

   public void setTeamNo(String teamNo) {
      this.teamNo = teamNo;
   }

   public String getTeamName() {
      return teamName;
   }

   public void setTeamName(String teamName) {
      this.teamName = teamName;
   }

   public String getTeamIntroduce() {
      return teamIntroduce;
   }

   public void setTeamIntroduce(String teamIntroduce) {
      this.teamIntroduce = teamIntroduce;
   }

   public String getTeamLocation() {
      return teamLocation;
   }

   public void setTeamLocation(String teamLocation) {
      this.teamLocation = teamLocation;
   }

   public String getTeamGround() {
      return teamGround;
   }

   public void setTeamGround(String teamGround) {
      this.teamGround = teamGround;
   }

   public String getTeamAbility() {
      return teamAbility;
   }

   public void setTeamAbility(String teamAbility) {
      this.teamAbility = teamAbility;
   }

   public String getTeamUniform() {
      return teamUniform;
   }

   public void setTeamUniform(String teamUniform) {
      this.teamUniform = teamUniform;
   }

   public String getTeamManner() {
      return teamManner;
   }

   public void setTeamManner(String teamManner) {
      this.teamManner = teamManner;
   }

   public String getTeamStrategy() {
      return teamStrategy;
   }

   public void setTeamStrategy(String teamStrategy) {
      this.teamStrategy = teamStrategy;
   }

   public String getTeamPre() {
      return teamPre;
   }

   public void setTeamPre(String teamPre) {
      this.teamPre = teamPre;
   }

   public String getTeamDate() {
      return teamDate;
   }

   public void setTeamDate(String teamDate) {
      this.teamDate = teamDate;
   }

   public String getTeamAge() {
      return teamAge;
   }

   public void setTeamAge(String teamAge) {
      this.teamAge = teamAge;
   }

   public String getTeamEmblem() {
      return teamEmblem;
   }

   public void setTeamEmblem(String teamEmblem) {
      this.teamEmblem = teamEmblem;
   }

   public String getMemberPrivate() {
      return memberPrivate;
   }

   public void setMemberPrivate(String memberPrivate) {
      this.memberPrivate = memberPrivate;
   }

   public String getTeamGender() {
      return teamGender;
   }

   public void setTeamGender(String teamGender) {
      this.teamGender = teamGender;
   }

   public int getCount() {
      return count;
   }

   public void setCount(int count) {
      this.count = count;
   }

   public MultipartFile getUpFile() {
      return upFile;
   }

   public void setUpFile(MultipartFile upFile) {
      this.upFile = upFile;
   }
   
   public String getSportsNo() {
	return sportsNo;
	}
	
	
	public void setSportsNo(String sportsNo) {
		this.sportsNo = sportsNo;
	}

	public String getHomeaway() {
		return homeaway;
	}

	public void setHomeaway(String homeaway) {
		this.homeaway = homeaway;
	}
	
	public String getBackupNum() {
		return backupNum;
	}

	public void setBackupNum(String backupNum) {
		this.backupNum = backupNum;
	}

	@Override
	public String toString() {
		return "TeamDTO [teamNo=" + teamNo + ", teamName=" + teamName + ", teamIntroduce=" + teamIntroduce
				+ ", teamLocation=" + teamLocation + ", teamGround=" + teamGround + ", teamAbility=" + teamAbility
				+ ", teamUniform=" + teamUniform + ", teamManner=" + teamManner + ", teamStrategy=" + teamStrategy
				+ ", teamPre=" + teamPre + ", teamDate=" + teamDate + ", teamAge=" + teamAge + ", teamEmblem="
				+ teamEmblem + ", memberPrivate=" + memberPrivate + ", teamGender=" + teamGender + ", count=" + count
				+ ", upFile=" + upFile + ", sportsNo=" + sportsNo + ", homeaway=" + homeaway + ", backupNum="
				+ backupNum + "]";
	}

}