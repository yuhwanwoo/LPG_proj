package game.LPG.ground;

import org.springframework.web.multipart.MultipartFile;

public class GroundDTO {
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
	
	


	//constructor
	public GroundDTO() {
		
	}

	
	public void setNull(){
		if(getGrdName()==null){
			setGrdName("");
		}
		if(getGrdAddr()==null){
			setGrdAddr("");
		}
		if( getGrdPhone()==null){
			setGrdAddr("");
		}
		if( getGrdArea()==null){
			 setGrdArea("");
		}
		if( getGrdCost()==0){
			setGrdCost(0);
		}
		if( getGrdDetail()==null){
			 setGrdDetail("");
		}
		if( getGrdImg()==null){
			 setGrdImg("");
		}
		if( getGrdType()==null){
			 setGrdType("");
		}
	}

	//getter setter
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
		if(grdName==null){
			
		}
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


	//tostring
	@Override
	public String toString() {
		return "GroundDTO [grdNo=" + grdNo + ", grdName=" + grdName + ", grdAddr=" + grdAddr + ", grdPhone=" + grdPhone
				+ ", grdArea=" + grdArea + ", grdDetail=" + grdDetail + ", grdCost=" + grdCost + ", grdImg=" + grdImg + ", grdType=" + grdType + ", xpos=" + xpos + ", ypos=" + ypos +"]";
	}
	
}



