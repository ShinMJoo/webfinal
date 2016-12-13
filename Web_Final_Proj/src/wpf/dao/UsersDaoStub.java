package wpf.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import wpf.dto.Users;

public class UsersDaoStub implements UsersDao{

	@Override
	public List<Users> selectAllCustomer(Connection con) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users selectCustomer(Connection con, String id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUsers(Connection con, String id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUsers(Connection con, Users customer) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertUsers(Connection con, Users customer) throws SQLException {
		// TODO Auto-generated method stub
		
	}

}
