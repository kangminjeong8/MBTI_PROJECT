package board_model;

import java.sql.Timestamp;

public class CommentVO {
	private int commentnum;
	private String id;
	private int boardnumber;
	private String comment;
	private Timestamp date;
	
	public CommentVO() {
		// TODO Auto-generated constructor stub
	}

	public CommentVO(int commentnum, String id, int boardnumber, String comment, Timestamp date) {
		super();
		this.commentnum = commentnum;
		this.id = id;
		this.boardnumber = boardnumber;
		this.comment = comment;
		this.date = date;
	}

	public int getCommentnum() {
		return commentnum;
	}

	public void setCommentnum(int commentnum) {
		this.commentnum = commentnum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBoardnumber() {
		return boardnumber;
	}

	public void setBoardnumber(int boardnumber) {
		this.boardnumber = boardnumber;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
}
