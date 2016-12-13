package wpf.dto;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Board implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer boardNo;
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private String userId;
	private Users user;
	
	public Board(Integer boardNo, String boardTitle, String boardContent, Date boardDate, String userId){
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.userId = userId;
	}
}
