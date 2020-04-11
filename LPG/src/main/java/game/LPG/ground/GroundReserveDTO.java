package game.LPG.ground;



public class GroundReserveDTO {

	private int grdrsvNo;
	private String grdNo;
	private String grdrsvUseDate;
	private String grdrsvStartTime;
	private String grdrsvEndTime;
	private String grdrsvDate;
	private String grdrsvCancStartDate;
	private String grdrsvCancEndDate;
	private int sportsNo;
	private int mchNo;
	private String grdName;
	
	//jsp���� �ð� ������ ���
	private String grdrsvtime;
	
	//constructor
	public GroundReserveDTO() {
		
	}
	
	//set null to ""
	public void setNull(){
		if(getGrdrsvUseDate()==null){
		//	setGrdrsvUseDate();
		}
	}
	
	//getter setter
	public int getGrdrsvNo() {
		return grdrsvNo;
	}

	public void setGrdrsvNo(int grdrsvNo) {
		this.grdrsvNo = grdrsvNo;
	}

	public String getGrdNo() {
		return grdNo;
	}

	public void setGrdNo(String grdNo) {
		this.grdNo = grdNo;
	}

	public String getGrdrsvUseDate() {
		return grdrsvUseDate;
	}

	public void setGrdrsvUseDate(String grdrsvUseDate) {
		this.grdrsvUseDate = grdrsvUseDate;
	}

	public String getGrdrsvStartTime() {
		return grdrsvStartTime;
	}

	public void setGrdrsvStartTime(String grdrsvStartTime) {
		this.grdrsvStartTime = grdrsvStartTime;
	}

	public String getGrdrsvEndTime() {
		return grdrsvEndTime;
	}

	public void setGrdrsvEndTime(String grdrsvEndTime) {
		this.grdrsvEndTime = grdrsvEndTime;
	}

	public String getGrdrsvDate() {
		return grdrsvDate;
	}

	public void setGrdrsvDate(String grdrsvDate) {
		this.grdrsvDate = grdrsvDate;
	}

	public String getGrdrsvCancStartDate() {
		return grdrsvCancStartDate;
	}

	public void setGrdrsvCancStartDate(String grdrsvCancStartDate) {
		this.grdrsvCancStartDate = grdrsvCancStartDate;
	}

	public String getGrdrsvCancEndDate() {
		return grdrsvCancEndDate;
	}

	public void setGrdrsvCancEndDate(String grdrsvCancEndDate) {
		this.grdrsvCancEndDate = grdrsvCancEndDate;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}

	public int getMchNo() {
		return mchNo;
	}

	public void setMchNo(int mchNo) {
		this.mchNo = mchNo;
	}
	
	public String getGrdrsvtime() {
		return grdrsvtime;
	}

	public void setGrdrsvtime(String grdrsvtime) {
		this.grdrsvtime = grdrsvtime;
		
	}

	
	
	public String getGrdName() {
		return grdName;
	}

	public void setGrdName(String grdName) {
		this.grdName = grdName;
	}

	//toString
	@Override
	public String toString() {
		return "GroundReserveDTO [grdrsvNo=" + grdrsvNo + ", grdNo=" + grdNo + ", grdrsvUseDate=" + grdrsvUseDate
				+ ", grdrsvStartTime=" + grdrsvStartTime + ", grdrsvEndTime=" + grdrsvEndTime + ", grdrsvDate="
				+ grdrsvDate + ", grdrsvCancStartDate=" + grdrsvCancStartDate + ", grdrsvCancEndDate="
				+ grdrsvCancEndDate + ", sportsNo=" + sportsNo + ", mchNo=" + mchNo + ", grdName=" + grdName
				+ ", grdrsvtime=" + grdrsvtime + "]";
	}

	

	
}
