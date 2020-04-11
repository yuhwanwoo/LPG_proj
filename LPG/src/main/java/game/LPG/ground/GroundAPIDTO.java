package game.LPG.ground;

import org.springframework.web.multipart.MultipartFile;

public class GroundAPIDTO {
	private String grdNo;
	private String grdName;
	private String grdAddr;
	private String grdPhone;
	private String grdArea;
	private String grdDetail;
	private int grdCost;
	private String grdImg;
	private String grdType;//�౸��,ǲ����
	private double xpos;
	private double ypos;
	private MultipartFile upload;
		
	private String grdPay;//서비스 유무료
	private String startServiceTime;//서비스이용시작시간
	private String endServiceTime;//서비스이용종료시간
	private String startRsvDate;//접수시작일시
	private String endRsvDate;//접수종료일시
	private String cancelDate;	//취소기간 기준정보
	private String toCancelDate;//취소기간 기준일까지
	
	
	public GroundAPIDTO(){
	}
	
	
	
	public String getGrdNo() {
		return grdNo;
	}

	public void setGrdNo(String grdNo) {
		this.grdNo = grdNo;
	}

	public String getGrdName() {
		return grdName;
	}

	public void setGrdName(String grdName) {
		this.grdName = grdName;
	}

	public String getGrdAddr() {
		return grdAddr;
	}

	public void setGrdAddr(String grdAddr) {
		this.grdAddr = grdAddr;
	}

	public String getGrdPhone() {
		return grdPhone;
	}

	public void setGrdPhone(String grdPhone) {
		this.grdPhone = grdPhone;
	}

	public String getGrdArea() {
		return grdArea;
	}

	public void setGrdArea(String grdArea) {
		this.grdArea = grdArea;
	}

	public String getGrdDetail() {
		return grdDetail;
	}

	public void setGrdDetail(String grdDetail) {
		this.grdDetail = grdDetail;
	}

	public int getGrdCost() {
		return grdCost;
	}

	public void setGrdCost(int grdCost) {
		this.grdCost = grdCost;
	}

	public String getGrdImg() {
		return grdImg;
	}

	public void setGrdImg(String grdImg) {
		this.grdImg = grdImg;
	}

	public String getGrdType() {
		return grdType;
	}

	public void setGrdType(String grdType) {
		this.grdType = grdType;
	}

	public double getXpos() {
		return xpos;
	}

	public void setXpos(double xpos) {
		this.xpos = xpos;
	}

	public double getYpos() {
		return ypos;
	}

	public void setYpos(double ypos) {
		this.ypos = ypos;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}


	public String getGrdPay() {
		return grdPay;
	}

	public void setGrdPay(String grdPay) {
		this.grdPay = grdPay;
	}

	public String getStartServiceTime() {
		return startServiceTime;
	}

	public void setStartServiceTime(String startServiceTime) {
		this.startServiceTime = startServiceTime;
	}

	public String getEndServiceTime() {
		return endServiceTime;
	}

	public void setEndServiceTime(String endServiceTime) {
		this.endServiceTime = endServiceTime;
	}

	public String getStartRsvDate() {
		return startRsvDate;
	}

	public void setStartRsvDate(String startRsvDate) {
		this.startRsvDate = startRsvDate;
	}

	public String getEndRsvDate() {
		return endRsvDate;
	}

	public void setEndRsvDate(String endRsvDate) {
		this.endRsvDate = endRsvDate;
	}

	public String getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(String cancelDate) {
		this.cancelDate = cancelDate;
	}

	public String getToCancelDate() {
		return toCancelDate;
	}

	public void setToCancelDate(String toCancelDate) {
		this.toCancelDate = toCancelDate;
	}

	@Override
	public String toString() {
		return "GroundAPIDTO [grdPay=" + grdPay + ", startServiceTime=" + startServiceTime + ", endServiceTime="
				+ endServiceTime + ", startRsvDate=" + startRsvDate + ", endRsvDate=" + endRsvDate + ", cancelDate="
				+ cancelDate + ", toCancelDate=" + toCancelDate + "]";
	}
	
	
	
}
