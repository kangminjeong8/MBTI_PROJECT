package user_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import util.JDBCUtil;

public class UserDAO {

	private static UserDAO instance = new UserDAO();

	private UserDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 클래스 로드 에러");
		}
	}

	public static UserDAO getInstance() {
		return instance;
	}

	public String URL = "jdbc:oracle:thin:@172.30.1.63:1521:xe";
	public String UID = "MBTI";
	public String UPW = "mbti";

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	//메서드(1) 회원가입
	public void join(UserVO vo) {

		String sql = "insert into users values(?, ?, ?, ?, ?, ?, ?)";

		try {
			conn = DriverManager.getConnection(URL, UID, UPW);

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getGender());
			pstmt.setString(5, vo.getContactnumber());
			pstmt.setString(6, vo.getEmail());
			pstmt.setString(7, vo.getIntroduction());

			pstmt.executeUpdate(); //실행(성공시 1 반환, 실패시 0 반환)

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
	}

	//메서드(2) 아이디 체크
	public int idCheck(String id, String email) {
		int result = 0;

		String sql = "select count(*) as total from users where id = ? or email = ?";

		try {
			conn = DriverManager.getConnection(URL, UID, UPW);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, email);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				result = rs.getInt("total");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return result;

	}

	//메서드(3) 로그인
	public UserVO login(String id, String pw) {

		UserVO vo = null;

		String sql = "select * from users where id = ? and pw =?";

		try {
			conn = DriverManager.getConnection(URL, UID, UPW);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String contactnumber = rs.getString("contactnumber");
				String introduction = rs.getString("introduction");
				
				vo = new UserVO(id2, null, name, gender, contactnumber, email, introduction);
		
			}

		}	catch (Exception e) {
			e.printStackTrace();

		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return vo;
	}

	//메서드(4) 회원정보 조회
	public UserVO getInfo(String id) {

		UserVO vo = null;
		String sql = "select * from users where id = ?";

		try {
			conn = DriverManager.getConnection(URL, UID, UPW);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			//rs 역할: next를 만나면 다음 행을 검사하고, 다음 행이 있으면 true를 반환(전진과 유사)
			rs = pstmt.executeQuery();

			if(rs.next()) {
				//패스워드는 보여지면 안되니까 안가져옴

				String id2 = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String contactnumber = rs.getString("contactnumber");
				String introduction = rs.getString("introduction");

				vo = new UserVO(id2, null, name, gender, contactnumber, email, introduction);
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return vo;
	}

	//메서드(5) 업데이트
	public int update(String id, String pw, String name, String gender, String contactnumber, String email, String introduction ) {


		int result = 0;

		String sql = "update users set pw = ?, name = ?, gender = ?, contactnumber = ?, email = ?, introduction = ? where id = ?";


		try {
			conn = DriverManager.getConnection(URL, UID, UPW);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3, gender);
			pstmt.setString(4, contactnumber);
			pstmt.setString(5, email);
			pstmt.setString(6, introduction);
			pstmt.setString(7, id);

			//rs 역할: next를 만나면 다음 행을 검사하고, 다음 행이 있으면 true를 반환(전진과 유사)
			result = pstmt.executeUpdate(); //성공시 1, 실패 0


		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return result;
	}

	//메서드(6) 회원 탈퇴
	public int delete(String id) {
		int result = 0;

		String sql = "delete from users where id = ?";

		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}

		return result;
	}



}
