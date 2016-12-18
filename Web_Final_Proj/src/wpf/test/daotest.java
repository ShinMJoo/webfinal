package wpf.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.hamcrest.core.Is;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import wpf.dao.UsersDao;
import wpf.dao.UsersDaoStub;
import wpf.dto.Users;
import wpf.util.DBUtil;


public class daotest {

	DBUtil util = DBUtil.getDBUtil();
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Connection con = util.getConnection();
		System.out.println(con);
		UsersDao dao = UsersDaoStub.getUsersDaoStub();
		try {
			List<Users> list  = dao.selectAllCustomer(con);
			System.out.println(list);
			Users user = dao.selectCustomer(con, "mj123");
			System.out.println(user);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
