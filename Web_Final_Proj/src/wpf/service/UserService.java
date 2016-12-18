package wpf.service;

import java.sql.Connection;

import wpf.dto.Users;

public interface UserService {
	
	Users login(String id, String pass);
	boolean join(Users user);
}
