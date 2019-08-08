package member.model.vo;

import java.sql.Timestamp;

public class Member {
	private int userNo;
	private String email;
	private String pwd;
	private String nickName;
	private String address;
	private String snsId;
	private char status;
	private Timestamp enrollDate;
	private Timestamp modifyDate;
	private int blackCount;
	private char blackStatus;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(int userNo, String email, String pwd, String nickName, String address, String snsId, char status,
			Timestamp enrollDate, Timestamp modifyDate, int blackCount, char blackStatus) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.pwd = pwd;
		this.nickName = nickName;
		this.address = address;
		this.snsId = snsId;
		this.status = status;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.blackCount = blackCount;
		this.blackStatus = blackStatus;
	}
	public Member(String email, String pwd, String nickName) {
		super();
		this.email = email;
		this.pwd = pwd;
		this.nickName = nickName;
	}
		

	public Member(int userNo, String address, String snsId) {
		super();
		this.userNo = userNo;
		this.address = address;
		this.snsId = snsId;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSnsId() {
		return snsId;
	}
	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}
	public char getStatus() {
		return status;
	}
	public void setStatus(char status) {
		this.status = status;
	}
	public Timestamp getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Timestamp enrollDate) {
		this.enrollDate = enrollDate;
	}
	public Timestamp getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Timestamp modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getBlackCount() {
		return blackCount;
	}
	public void setBlackCount(int blackCount) {
		this.blackCount = blackCount;
	}
	public char getBlackStatus() {
		return blackStatus;
	}
	public void setBlackStatus(char blackStatus) {
		this.blackStatus = blackStatus;
	}
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", email=" + email + ", pwd=" + pwd + ", nickName=" + nickName
				+ ", address=" + address + ", snsId=" + snsId + ", status=" + status + ", enrollDate=" + enrollDate
				+ ", modifyDate=" + modifyDate + ", blackCount=" + blackCount + ", blackStatus=" + blackStatus + "]";
	}
	
	
	
	
}
