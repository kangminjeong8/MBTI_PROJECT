package mbti_model;

import java.sql.Timestamp;

public class HistoryVO {

	private int historynumber;
	private String id;
	private String mbti;
	private Timestamp historydate;
	
	public HistoryVO() {
		
	}
	
	public HistoryVO(int historynumber, String id, String mbti, Timestamp historydate) {
		super();
		this.historynumber = historynumber;
		this.id = id;
		this.mbti = mbti;
		this.historydate = historydate;
	}

	
	public int getHistorynumber() {
		return historynumber;
	}

	public void setHistorynumber(int historynumber) {
		this.historynumber = historynumber;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public Timestamp getHistorydate() {
		return historydate;
	}

	public void setHistorydate(Timestamp historydate) {
		this.historydate = historydate;
	}
	
	
	
	
	
}
