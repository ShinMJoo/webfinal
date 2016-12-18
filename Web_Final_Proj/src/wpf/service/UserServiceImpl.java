package wpf.service;

import java.sql.Connection;
import java.sql.SQLException;

import wpf.dao.UsersDao;
import wpf.dao.UsersDaoStub;
import wpf.dto.Users;
import wpf.util.DBUtil;

public class UserServiceImpl implements UserService{
	
	UsersDao ud = UsersDaoStub.getUsersDaoStub();

	// singleton
		private UserServiceImpl() {}
		private static UserServiceImpl impl = new UserServiceImpl();
		public static UserServiceImpl getUserServiceImpl(){
			return impl;
		}
	
	@Override
	public Users login(String id, String pass) {
		
		// 1. 공급 할 con 생성
		Connection con = DBUtil.getDBUtil().getConnection();
		
		// 2. return type create
		Users user = null;
		
		try{
			// transaction create
			user = ud.selectCustomer(con, id);
			if(user.getUserId().equals(id)){
				if(user.getUserPass().equals(pass)){
					// login complete
					System.out.println("Login Complete!");
				} 
			}
		} catch(SQLException | RuntimeException e){
			// change data rollback();
		}finally{
			DBUtil.getDBUtil().close(con);
		}
		return user;
	}

	@Override
	public void join(Users user) {

		// 1. 공급 할 con 생성
		Connection con = DBUtil.getDBUtil().getConnection();
		try{
			con.setAutoCommit(false);
			
			// Users insert
			ud.insertUsers(con, user);
			System.out.println("Join Complete!");
			con.commit();
			
		} catch(SQLException | RuntimeException e){
			// change data rollback();
			DBUtil.getDBUtil().rollback(con);
		} finally {
			DBUtil.getDBUtil().setAutoCommit(con, true);
			DBUtil.getDBUtil().close(con);
		}
	}

}
