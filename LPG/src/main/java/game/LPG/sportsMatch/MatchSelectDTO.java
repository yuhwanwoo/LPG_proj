package game.LPG.sportsMatch;


public class MatchSelectDTO {
	private String mchName;
	private String mchDate;
	private String mchPlay;
	private String mchType;
	private String grdArea;
	
	public MatchSelectDTO() {
		
	}

	public MatchSelectDTO(String mchName, String mchDate, String mchPlay, String mchType, String grdArea) {
		super();
		this.mchName = mchName;
		this.mchDate = mchDate;
		this.mchPlay = mchPlay;
		this.mchType = mchType;
		this.grdArea = grdArea;
	}

	@Override
	public String toString() {
		return "MatchSelectDTO [mchName=" + mchName + ", mchDate=" + mchDate + ", mchPlay=" + mchPlay + ", mchType="
				+ mchType + ", grdArea=" + grdArea + "]";
	}

	public String getMchName() {
		return mchName;
	}

	public void setMchName(String mchName) {
		this.mchName = mchName;
	}

	public String getMchDate() {
		return mchDate;
	}

	public void setMchDate(String mchDate) {
		this.mchDate = mchDate;
	}

	public String getMchPlay() {
		return mchPlay;
	}

	public void setMchPlay(String mchPlay) {
		this.mchPlay = mchPlay;
	}

	public String getMchType() {
		return mchType;
	}

	public void setMchType(String mchType) {
		this.mchType = mchType;
	}

	public String getGrdArea() {
		return grdArea;
	}

	public void setGrdArea(String grdArea) {
		this.grdArea = grdArea;
	}
	
	
}
