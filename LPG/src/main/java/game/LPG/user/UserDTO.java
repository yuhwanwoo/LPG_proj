package game.LPG.user;

import java.sql.Date;

public class UserDTO {
	private String userId;
	private String userPwd;
	private String userName;
	private String userNick;
	private String userPhone;
	private String userBirth;
	private String userAddr; //지번으로 찍히는 주소
	private String subAddr; //상세주소
	private String userSignDate;
	private String userGender;
	private String userEmail;
	private String userEmailAgree;
	private String userPoint;
	private int sportsNo;

	private int checkValue;

	public UserDTO() {
		
	}
	
	public UserDTO(String userId, String userPwd, String userName, String userNick, String userPhone, String userBirth,
			String userAddr, String subAddr, String userSignDate, String userGender, String userEmail,
			String userEmailAgree, String userPoint, int sportsNo, int checkValue) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userNick = userNick;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
		this.userAddr = userAddr;
		this.subAddr = subAddr;
		this.userSignDate = userSignDate;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.userEmailAgree = userEmailAgree;
		this.userPoint = userPoint;
		this.sportsNo = sportsNo;
		this.checkValue = checkValue;
	}

	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", userNick="
				+ userNick + ", userPhone=" + userPhone + ", userBirth=" + userBirth + ", userAddr=" + userAddr
				+ ", subAddr=" + subAddr + ", userSignDate=" + userSignDate + ", userGender=" + userGender
				+ ", userEmail=" + userEmail + ", userEmailAgree=" + userEmailAgree + ", userPoint=" + userPoint
				+ ", sportsNo=" + sportsNo + ", checkValue=" + checkValue + "]";
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getSubAddr() {
		return subAddr;
	}

	public void setSubAddr(String subAddr) {
		this.subAddr = subAddr;
	}

	public String getUserSignDate() {
		return userSignDate;
	}

	public void setUserSignDate(String userSignDate) {
		this.userSignDate = userSignDate;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserEmailAgree() {
		return userEmailAgree;
	}

	public void setUserEmailAgree(String userEmailAgree) {
		this.userEmailAgree = userEmailAgree;
	}

	public String getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(String userPoint) {
		this.userPoint = userPoint;
	}
	public int getCheckValue() {
		return checkValue;
	}
	public void setCheckValue(int checkValue) {
		this.checkValue = checkValue;
	}

	public int getSportsNo() {
		return sportsNo;
	}

	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}
	
	
}