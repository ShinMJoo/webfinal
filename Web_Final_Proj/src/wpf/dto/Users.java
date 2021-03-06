package wpf.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class Users implements Serializable{

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
	public Users(String userId, String userPass, String userName, String userEmail, String userPhone) {
		super();
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
	}

	/** 사용자_id. */
	private String userId;
	
	/** 사용자_pass. */
	private String userPass;
	
	/** 사용자_name. */
	private String userName;
	
	/** 사용자_email. */
	private String userEmail;
	
	/** 사용자_phone. */
	private String userPhone;
	
	/** 사용자_birth. */
	private int userBirth;
	
	/** 사용자_brand. */
	private String userBrand;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(int userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserBrand() {
		return userBrand;
	}

	public void setUserBrand(String userBrand) {
		this.userBrand = userBrand;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Users(String userId, String userPass, String userName, String userEmail, String userPhone, int userBirth,
			String userBrand) {
		super();
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
		this.userBrand = userBrand;
	}

	public Users() {
		super();
	}
	
	

}
