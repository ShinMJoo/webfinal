package wpf.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import wpf.dto.Users;
import wpf.service.UserService;
import wpf.service.UserServiceImpl;

public class UserServiceTest {

	
	UserService us = UserServiceImpl.getUserServiceImpl();
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Users user =  us.login("mj123", "1234");
		System.out.println(user);
	}
	@Test
	public void joinTest() {
		Users user =  new Users("bb123", "1234", "테스트", "test@test.com", "01012340000");
		us.join(user);
	}
}
