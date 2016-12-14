package wpf.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import wpf.dto.Users;


public interface UsersDao {
	
	/**
	 * 모든 Users의 정보를 List에 담아서 리턴한다.
	 * @param con
	 * @return
	 * @throws SQLException
	 */
	public List<Users> selectAllCustomer(Connection con) throws SQLException;
	
	/**
	 * 지정된 ID를 사용하는 Users를 조회 후 리턴한다.
	 * @param con
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public Users selectCustomer(Connection con, String id) throws SQLException;
	
	/**
	 * 지정된 ID를 사용하는 고객의 정보를 삭제한다.
	 * 이때 고객이 작성한 게시글, 댓글에 대한 정보도 함께 삭제되어야 한다.
	 * @param con
	 * @param id
	 * @throws SQLException
	 */
	public void deleteUsers(Connection con, String id) throws SQLException;
	
	/**
	 * 전달받은 Users 객체로 고객 정보를 수정한다.
	 * @param con
	 * @param Users
	 * @throws SQLException
	 */
	public void updateUsers(Connection con, Users customer) throws SQLException;
	
	/**
	 * 전달받은 Users 객체로 고객 정보를 등록한다.
	 * @param con
	 * @param Users
	 * @throws SQLException
	 */
	public void insertUsers(Connection con, Users customer) throws SQLException;
}
