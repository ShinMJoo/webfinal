package wpf.dto;
import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Reply implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer replyNo;
	private String replyContent;
	private Date replyDate;
	private String userId;
	private Users user;
	
	public Reply(Integer replyNo, String replyContent, Date replyDate, String userId) {
		super();
		
		this.replyNo = replyNo;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.userId = userId;
	}

}
