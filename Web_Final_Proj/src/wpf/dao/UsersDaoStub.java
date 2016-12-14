package wpf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import wpf.dto.Users;

public class UsersDaoStub implements UsersDao{
	
	// singleton pattern
	private UsersDaoStub(){}
	private static UsersDaoStub stub = new UsersDaoStub();
	public static UsersDaoStub getUsersDaoStub(){
		return stub;
	}

	
	// All Users Select Find
	@Override
	public List<Users> selectAllCustomer(Connection con) throws SQLException {
		
		List<Users> users = new ArrayList<>();
		ResultSet rset = null;
		
		
		// 1. query create
		String query = "select * from users";
		
		// 3. statement create
		PreparedStatement pstmt  = con.prepareStatement(query);
		
		// 4. query start
		rset = pstmt.executeQuery();
		while(rset.next()){
			String userId = rset.getString("user_id");
			String userPass = rset.getString("user_pass");
			String userName = rset.getString("user_name");
			String userEmail = rset.getString("user_email");
			String userPhone = rset.getString("user_phone");
			int userBirth = rset.getInt("user_birth");
			String userBrand = rset.getString("user_brand");
			
			Users us = new Users(userId, userPass, userName, userEmail, userPhone, userBirth, userBrand);
			users.add(us);
		}
		return users;
	}

	// Select one User
	// Login 처리를위한 query statement
	@Override
	public Users selectCustomer(Connection con, String id) throws SQLException {
		
		Users user = null;
		ResultSet rset = null;
		
		// 1. query create
		String query = "select * from users where user_id=?";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		
		// 4. query start
		rset = pstmt.executeQuery();
		while(rset.next()){
			String userId = rset.getString("user_id");
			String userPass = rset.getString("user_pass");
			String userName = rset.getString("user_name");
			String userEmail = rset.getString("user_email");
			String userPhone = rset.getString("user_phone");
			int userBirth = rset.getInt("user_birth");
			String userBrand = rset.getString("user_brand");
			
			user = new Users(userId, userPass, userName, userEmail, userPhone, userBirth, userBrand);
		}
		return user;
	}

	// delete query
	// 회원 탈퇴를 위한 query statement
	@Override
	public void deleteUsers(Connection con, String id) throws SQLException {
		// 1. query create
		String query = "delete users where user_id=?";
				
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		
		// 4. query start
		pstmt.executeUpdate();
		
	}

	// update query
	// 회원 정보 수정을 위한 query statement
	@Override
	public void updateUsers(Connection con, Users user) throws SQLException {
		// 1. query create
		String query = "update users set user_pass=?, user_name=?, user_email=?, user_phone=?, user_birth=?, user_brand=? where user_id=?";
				
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, user.getUserPass());
		pstmt.setString(2, user.getUserName());
		pstmt.setString(3, user.getUserEmail());
		pstmt.setString(4, user.getUserPhone());
		pstmt.setInt(5, user.getUserBirth());
		pstmt.setString(6, user.getUserBrand());
		pstmt.setString(7, user.getUserId());
				
		// 4. query start
		pstmt.executeUpdate();
		
	}

	// insert query
	// 회원 가입을 위한 query statement
	@Override
	public void insertUsers(Connection con, Users user) throws SQLException {
		int result = -1;
		
		// 1. query create
		String query  = "insert into users values(?,?,?,?,?,?,?)";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, user.getUserId());
		pstmt.setString(2, user.getUserPass());
		pstmt.setString(3, user.getUserName());
		pstmt.setString(4, user.getUserEmail());
		pstmt.setString(5, user.getUserPhone());
		pstmt.setInt(6, user.getUserBirth());
		pstmt.setString(7, user.getUserBrand());
				
		// 4. query start
		result = pstmt.executeUpdate();
				
		if(result == 1){
			System.out.println("Insert Complete! & 회원 가입 성공!");
		}
	}

}
