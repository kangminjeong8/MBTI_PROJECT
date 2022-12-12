package mbti_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import util.JDBCUtil;


public class MbtiDAO {
	
	private static MbtiDAO instance = new MbtiDAO();
	
	private MbtiDAO() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("드라이버클래스 로드 에러");
		}	
	}
	
	public static MbtiDAO getInstance() {
		return instance;
	}
	
	public String URL = "jdbc:oracle:thin:@172.30.1.44:1521:xe";
	public String UID = "MBTI";
	public String UPW = "mbti";

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertHistory(String id, String mbti) {
		int result = 0;
		String sql = "insert into history values(history_seq.NEXTVAL, ?, ?, sysdate)"; //첫번째 값에 시퀀스로 값 넣으면 됨

		try {

			conn = DriverManager.getConnection(URL,UID,UPW);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id); // 아이디
			pstmt.setString(2, mbti); // MBTI 결과

			result = pstmt.executeUpdate(); //실행(성공 시 1, 실패 시 0)
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	public ArrayList<HistoryVO> selectHistory(String id) {		
		ArrayList<HistoryVO> list = new ArrayList<>();
		
		String sql = "select * from history where id = ? order by historynumber desc"; 

		try {

			conn = DriverManager.getConnection(URL,UID,UPW);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "id"); // 아이디

			rs = pstmt.executeQuery(); //실행(성공 시 1, 실패 시 0)
			
			//rs결과를 list에 저장
			while(rs.next()) {
				
				HistoryVO vo = new HistoryVO();
				vo.setHistorynumber(rs.getInt("historynumber"));
				vo.setId(rs.getString("id"));
				vo.setMbti(rs.getString("mbti"));
				vo.setHistorydate(rs.getTimestamp("history_date"));
				list.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return list;
	}
	
}
