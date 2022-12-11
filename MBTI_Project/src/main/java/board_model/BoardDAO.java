package board_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

public class BoardDAO {
	
	private static BoardDAO instance = new BoardDAO();
	
	//BoardDAO기본 생성자
	private BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//Singleton 패턴
	public static BoardDAO getInstance() {
		return instance;
	}
	
	//DB접속 위한 기본 셋팅
//	String URL = "jdbc:oracle:thin:@172.30.1.61:1521:xe";
//	String UID = "MBTI";
//	String UPW = "mbti";
	String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	String UID = "com02";
	String UPW = "com02";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	

	//게시판 작성
	public void write(String history_num, String title, String content) {
		
		System.out.println(history_num);
		System.out.println(title);
		System.out.println(content);
		
//		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, sysdate)";
		String sql = "insert into board values(4, ?, ?, ?, sysdate)";
		
		try {
			
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, history_num);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
			
		} catch (Exception e){
			e.printStackTrace();
		} 
		
	}
	
	//게시판 목록 
	public ArrayList<BoardVO> getList(){
		ArrayList<BoardVO> list = new ArrayList<>();
		
		String sql = "select boardnumber, b.historynumber, h.mbti, id, title, content, regdate from board b\r\n"
				+ "inner join history h on b.historynumber = h.historynumber order by boardnumber desc";
		
		System.out.println("test");
		
		try {	
			Connection conn = DriverManager.getConnection(URL, UID, UPW);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
				
			
			while(rs.next()) {
					
				int board_num = rs.getInt("BOARDNUMBER");
				int history_num = rs.getInt("HISTORYNUMBER");
				String mbti = rs.getString("MBTI");
				String user_id = rs.getString("ID");
			    String title = rs.getString("TITLE");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				
				BoardVO vo = new BoardVO(board_num, history_num, mbti,  user_id, title, content, regdate);
				
				list.add(vo);
					
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
				System.out.println("close에러");
			}
		}
		return list;
	}
		
	public BoardVO getContent(String board_num) {
		BoardVO vo = null;
		
		String sql = "select boardnumber, b.historynumber, h.mbti, id, title, content, regdate from board b\r\n"
				+ "inner join history h on b.historynumber = h.historynumber order by boardnumber desc";
		
		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int board_num2 = rs.getInt("BOARDNUMBER");
				int history_num = rs.getInt("HISTORYNUMBER");
				String mbti = rs.getString("MBTI");
				String user_id = rs.getString("ID");
			    String title = rs.getString("TITLE");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");

				vo = new BoardVO(board_num2, history_num, mbti, user_id, title, content, regdate);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e2) {
				System.out.println("close에러");
			}
		}
		
		return vo;
	}

	public int update(String board_num, String user_id, String title, String content) {
		int result = 0;
		
		String sql = "update board set title =?, content =? where boardnumber = ?";
		
		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(3, Integer.parseInt(board_num));
			pstmt.setString(1, user_id);
			pstmt.setString(2, content);

			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
				
			} catch (Exception e2) {
				System.out.println("close 에러");
			}
		}
		return result;
	}
	
	public int delete(String board_num) {
		int result = 0;
		
		String sql = "delete board where boardnumber = ?";
		
		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, board_num);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
				
			} catch (Exception e2) {
				System.out.println("close 에러");
			}
		}
		
		
		return result;
	}
	
	public String getMbti(String user_id) {
		String result = "";
		
		String sql = "select mbti\r\n"
				+ "from ( select rownum, h.* from history h where id = ? \r\n"
				+ "        order by historynumber desc\r\n"
				+ ")\r\n"
				+ "where rownum = 1";
		
		try {
			conn = DriverManager.getConnection(URL,UID,UPW);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getString("MBTI");
			}
			
			System.out.println(result);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return result;
	}
	
}	
