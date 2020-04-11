package game.LPG.ground;


public class GroundReviewDTO {
	private int grdrevNo;
	private String grdNo;
	private String grdrevContext;
	private int grdrevQ1;
	private int grdrevQ2;
	private int grdrevQ3;
	private int grdrevQ4;
	private int sportsNo;
	
	
	//constructor
	public GroundReviewDTO() {
		
	}
	
	public void setNull(){
		if(getGrdrevContext()==null){
			setGrdrevContext("");
		}
	}
	
	//toString
	@Override
	public String toString() {
		return "GroundReviewDTO [grdrevNo=" + grdrevNo + ", grdNo=" + grdNo + ", grdrevContext=" + grdrevContext
				+ ", grdrevQ4=" + grdrevQ4 + ", grdrevQ1=" + grdrevQ1 + ", grdrevQ2=" + grdrevQ2 + ", grdrevQ3="
				+ grdrevQ3 + ", sportsNo=" + sportsNo + "]";
	}
	
	//getter setter
	public int getGrdrevNo() {
		return grdrevNo;
	}


	public void setGrdrevNo(int grdrevNo) {
		this.grdrevNo = grdrevNo;
	}

	public String getGrdNo() {
		return grdNo;
	}

	public void setGrdNo(String grdNo) {
		this.grdNo = grdNo;
	}

	public String getGrdrevContext() {
		return grdrevContext;
	}

	public void setGrdrevContext(String grdrevContext) {
		this.grdrevContext = grdrevContext;
	}

	public int getGrdrevQ1() {
		return grdrevQ1;
	}

	public void setGrdrevQ1(int grdrevQ1) {
		this.grdrevQ1 = grdrevQ1;
	}

	public int getGrdrevQ2() {
		return grdrevQ2;
	}

	public void setGrdrevQ2(int grdrevQ2) {
		this.grdrevQ2 = grdrevQ2;
	}

	public int getGrdrevQ3() {
		return grdrevQ3;
	}

	public void setGrdrevQ3(int grdrevQ3) {
		this.grdrevQ3 = grdrevQ3;
	}

	public int getGrdrevQ4() {
		return grdrevQ4;
	}

	public void setGrdrevQ4(int grdrevQ4) {
		this.grdrevQ4 = grdrevQ4;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}


	
	

}
