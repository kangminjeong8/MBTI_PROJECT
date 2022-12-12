package util;

import java.sql.*;

public class JDBCUtil {
	
	public static void close(Connection conn,
						PreparedStatement pstmt,
						ResultSet rs) {
		try {
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch (Exception e2) {
			System.out.println("close 에러");
		}
		
		
	}
}
