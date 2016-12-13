package wpf.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@Data
@NoArgsConstructor
public class Users implements Serializable{

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;
	
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
	
	public Users(String userId, String userPass, String userName, String userEmail, String userPhone, int userBirth, String userBrand) {
		super();
		this.userId = userId;
		this.userPass = userPass;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
		this.userBrand = userBrand;
	}

}
