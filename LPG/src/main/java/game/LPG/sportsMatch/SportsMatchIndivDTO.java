package game.LPG.sportsMatch;

public class SportsMatchIndivDTO {
	String mchInNo;
	String sportsNo;
	String mchNo;
	
	
	
	public SportsMatchIndivDTO() {
		super();
	}



	public SportsMatchIndivDTO(String mchInNo, String sportsNo, String mchNo) {
		super();
		this.mchInNo = mchInNo;
		this.sportsNo = sportsNo;
		this.mchNo = mchNo;
	}



	public String getMchInNo() {
		return mchInNo;
	}



	public void setMchInNo(String mchInNo) {
		this.mchInNo = mchInNo;
	}



	public String getSportsNo() {
		return sportsNo;
	}



	public void setSportsNo(String sportsNo) {
		this.sportsNo = sportsNo;
	}



	public String getMchNo() {
		return mchNo;
	}



	public void setMchNo(String mchNo) {
		this.mchNo = mchNo;
	}



	@Override
	public String toString() {
		return "SportsMatchIndivDTO [mchInNo=" + mchInNo + ", sportsNo=" + sportsNo + ", mchNo=" + mchNo + "]";
	}
	
	
}
