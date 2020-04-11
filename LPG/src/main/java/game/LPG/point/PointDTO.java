package game.LPG.point;

public class PointDTO {
	private String pointNO;
	private String userId; 
	private String pointPrice;
	private String pointUse ;
	private String pointUseDate;
	private String pointHistory;
	private String pointCheck;//포인트 테이블 충전/사용 구분.
	
	public  PointDTO() {
		
	}

	public PointDTO(String pointNO, String userId, String pointPrice, String pointUse, String pointUseDate,
			String pointHistory, String pointCheck) {
		super();
		this.pointNO = pointNO;
		this.userId = userId;
		this.pointPrice = pointPrice;
		this.pointUse = pointUse;
		this.pointUseDate = pointUseDate;
		this.pointHistory = pointHistory;
		this.pointCheck = pointCheck;
	}
	
	@Override
	public String toString() {
		return "PointDTO [pointNO=" + pointNO + ", userId=" + userId + ", pointPrice=" + pointPrice + ", pointUse="
				+ pointUse + ", pointUseDate=" + pointUseDate + ", pointHistory=" + pointHistory + ", pointCheck=" + pointCheck + "]";
	}

	public String getPointCheck() {
		return pointCheck;
	}

	public void setPointCheck(String pointCheck) {
		this.pointCheck = pointCheck;
	}

	public String getPointNO() {
		return pointNO;
	}

	public void setPointNO(String pointNO) {
		this.pointNO = pointNO;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPointPrice() {
		return pointPrice;
	}

	public void setPointPrice(String pointPrice) {
		this.pointPrice = pointPrice;
	}

	public String getPointUse() {
		return pointUse;
	}

	public void setPointUse(String pointUse) {
		this.pointUse = pointUse;
	}

	public String getPointUseDate() {
		return pointUseDate;
	}

	public void setPointUseDate(String pointUseDate) {
		this.pointUseDate = pointUseDate;
	}

	public String getPointHistory() {
		return pointHistory;
	}

	public void setPointHistory(String pointHistory) {
		this.pointHistory = pointHistory;
	}
	
	
	
}
	