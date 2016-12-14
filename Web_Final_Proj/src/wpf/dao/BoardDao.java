package wpf.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import wpf.dto.Board;


public interface BoardDao {
	/**
	 * 한 페이지에 출력될 게시글의 게수
	 */
	int BOARD_PER_PAGE = 10;

	/**
	 * 모든 게시글의 목록을 List<Board> 형태로 리턴
	 * @param con
	 * @return
	 * @throws SQLException
	 */
	public List<Board> selectAllBoard(Connection con) throws SQLException;
	
	/**
	 * 특정 게시글 번호가 입력되면 해당 Board를 조회 후 리턴
	 * @param con
	 * @param no
	 * @return
	 * @throws SQLException
	 */
	public Board selectBoard(Connection con, int no) throws SQLException;
	
	/**
	 * 특정 게시글 번호가 입력되면 해당 Board를 삭제
	 * @param con
	 * @param no
	 * @throws SQLException
	 */
	public void deleteBoard(Connection con, int no) throws SQLException;
	
	/**
	 * Board 객체를 전달받아 기존 Board의 내용을 업데이트
	 * @param con
	 * @param board
	 * @throws SQLException
	 */
	public void updateBoard(Connection con, Board board) throws SQLException;
	
	/**
	 * Board 객체를 전달받아 저장
	 * @param con
	 * @param board
	 * @throws SQLException
	 */
	public void insertBoard(Connection con, Board board) throws SQLException;
	
	/**
	 * 특정 페이지의 게시물 목록을 리턴하는 메서드
	 * 실제 리턴되는 Board의 개수는 BOARD_PER_PAGE에 따른다.
	 * @param con
	 * @param page
	 * @return
	 * @throws SQLException
	 */
	public List<Board> getBoardByPage(Connection con, int page) throws SQLException;
}
