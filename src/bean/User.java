package bean;

public class User {
	
	private String userName;
	private String password;
	private int shenfen;
	private String userID;
	private String sex;
	private String classId;
	private String phoneNumber;

	public User() {
		this.userName = null;
		this.password = null;
		this.shenfen = 0;
		this.userID = null;
		this.sex = null;
		this.classId = null;
		phoneNumber=null;
	}
	
	public User(String userName, String password, int shenfen, String userID, String sex, String classId,String phoneNumber) {
		super();
		this.userName = userName;
		this.password = password;
		this.shenfen = shenfen;
		this.userID = userID;
		this.sex = sex;
		this.classId = classId;
		this.phoneNumber=phoneNumber;
	}
	
	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getShenfen() {
		return shenfen;
	}
	public void setShenfen(int shenfen) {
		this.shenfen = shenfen;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	
	
	
	
}
