package mbti_controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mbti_model.HistoryVO;
import mbti_service.MbtiService;
import mbti_service.MbtiServiceImpl;


@WebServlet("*.mbti")
public class mbti_controller extends HttpServlet {
private static final long serialVersionUID = 1L;
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doAction(request, response);
}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doAction(request, response);
}

//get, post 하나로 묶음
protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	//한글 처리
	request.setCharacterEncoding("utf-8");
	
	//요청분기
	String uri = request.getRequestURI();
	String path = request.getContextPath();
	String command = uri.substring(path.length());
	
	System.out.println("요청경로:" + command);
	
	MbtiService service = new MbtiServiceImpl();
	
	switch (command) {
	case "/mbti_test/mbti_test_succeed.mbti": // 검사 완료 버튼 누를 때
		
		request.getRequestDispatcher("/mbti_test/mbti_test_succeed.jsp").forward(request, response);
		
		break;
		
	case "/mbti_test/mbti_test_result.mbti": // 검사 완료 버튼 누르고 나서 mbti가 무엇인지 처리하고 이력 가져오기
		
		HttpSession session = request.getSession(); //자바에서 현재 세션 얻는 방법
//		session.setAttribute("user_id", vo.getId()); 회원아이디 가져오기
		
		String answer = (String)request.getAttribute("answer");
		
		request.setAttribute("mbti", answer);
		service.insertHistory(request, response); // 검사결과를 db에 저장
		
		ArrayList<HistoryVO> list = service.selectHistory(request, response); // 이력 가져오기
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/mbti/mbti_" + answer + ".jsp").forward(request, response);
		
		break;


		
	default:
		break;
	}
}
}
