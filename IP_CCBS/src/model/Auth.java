package model;

public class Auth {
	/**
	 * 
	 */
	private String userName, password;
	public boolean match;
	
	public Auth() {}
	
	public String getUserName() {
		return this.userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean match() {
		if((userName == "admin") && (password == "admin123")) {
			match = true;
		}
		else if((userName == "user") && (password == "user123")) {
			match = true;
		}
		else if((userName == "companyMBO") && (password == "MBO123")) {
			match = true;
		}
		else {
			match = false;
		}
		return match;
	}
}
