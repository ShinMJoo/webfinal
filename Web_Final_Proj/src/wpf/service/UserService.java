package wpf.service;

import java.sql.Connection;

import wpf.dto.Users;

public interface UserService {
	
	Users login(String id, String pass);
	void join(Users user);
}
