package board_model;

import java.sql.Timestamp;

public class BoardVO {
	
	private int board_num;
	private int history_num;
	private String mbti;
	private String user_id;
	private String title;
	private String content;
	private Timestamp regdate;
	
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardVO(int board_num, int history_num, String mbti, String user_id, String title, String content,
			Timestamp regdate) {
		super();
		this.board_num = board_num;
		this.history_num = history_num;
		this.mbti = mbti;
		this.user_id = user_id;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}


	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public int getHistory_num() {
		return history_num;
	}

	public void setHistory_num(int history_num) {
		this.history_num = history_num;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	
}
