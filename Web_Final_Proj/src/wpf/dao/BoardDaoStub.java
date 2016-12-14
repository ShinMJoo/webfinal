package wpf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import wpf.dto.Board;

public class BoardDaoStub implements BoardDao{
	
	// singleton pattern
	private BoardDaoStub(){}
	private static BoardDaoStub stub = new BoardDaoStub();
	public static BoardDaoStub getBoardDaoStub(){
		return stub;
	}

	// select all board
	// 모든 게시글 조회에 필요한 query statement
	@Override
	public List<Board> selectAllBoard(Connection con) throws SQLException {
		List<Board> boards = new ArrayList<>();
		ResultSet rset = null;
		
		// 1. query create
		String query = "select * from board";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		
		// 4. query start
		rset = pstmt.executeQuery();
		
		while(rset.next()){
			Integer boardNo = rset.getInt("board_no");
			String boardTitle = rset.getString("board_title");
			String boardContent = rset.getString("board_contnet");
			Date boardDate = rset.getDate("board_date");
			String userId = rset.getString("user_id");
			
			Board bo = new Board(boardNo, boardTitle, boardContent, boardDate, userId);
			boards.add(bo);
		}
		return boards;
	}

	// board select one find
	// 단일 게시물을 보기 위한 query statement
	@Override
	public Board selectBoard(Connection con, int no) throws SQLException {
		Board board = null;
		ResultSet rset = null;
		
		// 1. query create
		String query  = "select * from board where board_no=?";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1, no);
		
		// 4. query start
		rset = pstmt.executeQuery();
		
		while(rset.next()){
			Integer boardNo = rset.getInt("board_no");
			String boardTitle = rset.getString("board_title");
			String boardContent = rset.getString("board_contnet");
			Date boardDate = rset.getDate("board_date");
			String userId = rset.getString("user_id");
			
			board = new Board(boardNo, boardTitle, boardContent, boardDate, userId);
		}
		return board;
	}

	// board delete query
	// 번호 입력시 해당 게시글 삭제하기 위한 query statement
	@Override
	public void deleteBoard(Connection con, int no) throws SQLException {
		// 1. query create
		String query = "delete board where board_no=?";
				
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1, no);
				
		// 4. query start
		pstmt.executeUpdate();
		
	}

	// board update query
	// board 수정을 위한 query statement
	@Override
	public void updateBoard(Connection con, Board board) throws SQLException {
		// 1. query create
		String query = "update board set board_tittle=?, board_content=? where board_no=?";
				
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, board.getBoardTitle());
		pstmt.setString(2, board.getBoardContent());
		pstmt.setInt(3, board.getBoardNo());
				
		pstmt.executeUpdate();
	}

	// board insert query
	// board 게시글 등록을 위한 query statement
	@Override
	public void insertBoard(Connection con, Board board) throws SQLException {
		int result = -1;
		
		// 1. query create
		String query = "insert into board (board_no, board_title, board_content, user_id) values(SEQ_BOARDNO.nextval, ?, ?, ?)";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setString(1, board.getBoardTitle());
		pstmt.setString(2, board.getBoardContent());
		pstmt.setString(3, board.getUserId());
		
		// 4. query start
		result = pstmt.executeUpdate();
		
		if(result == 1){
			System.out.println("Content Insert Complete! & 게시글 등록 완료!");
		}
	}

	@Override
	public List<Board> getBoardByPage(Connection con, int page) throws SQLException {
		List<Board> boards = new ArrayList<>();
		ResultSet rset = null;
		
		// 1. query create
		String query = "select * from (select sub.*, rownum as rnum "
				+ "from (select * from board) sub"
				+ ") where rnum>=? and rnum <= ?";
		
		// 3. statement create
		PreparedStatement pstmt = con.prepareStatement(query);
		pstmt.setInt(1, BOARD_PER_PAGE*page-9);
		pstmt.setInt(2, BOARD_PER_PAGE*page);
		
		rset = pstmt.executeQuery();
		
		while(rset.next()){
			Integer boardNo = rset.getInt("board_no");
			String boardTitle = rset.getString("board_title");
			String boardContent = rset.getString("board_contnet");
			Date boardDate = rset.getDate("board_date");
			String userId = rset.getString("user_id");
			
			boards.add(new Board(boardNo, boardTitle, boardContent, boardDate, userId));
		}
		return boards;
	}

}
