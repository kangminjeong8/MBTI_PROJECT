package user_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user_model.UserDAO;
import user_model.UserVO;


public class UserServiceImpl implements UserService {
	//컨트롤러의 역할을 분담
	//가입 처리
	public int join(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String contactnumber = request.getParameter("contactnumber");
		String email = request.getParameter("email");
		String introduction = request.getParameter("introduction");
		
		//아이디 or email 중복 검사 → 가입
		UserDAO dao = UserDAO.getInstance();
		int result = dao.idCheck(id, email);
		
		if(result >= 1) { //중복
			return 1; //중복의 의미 반환
		} else { //중복 x → 가입
			UserVO vo = new UserVO(id, pw, name, gender, contactnumber, email, introduction);
			dao.join(vo); //성공의 의미 반환
		}
		return result;
		
	
	}


	@Override
	public UserVO login(HttpServletRequest request, HttpServletResponse response) {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.login(id, pw);
	
		return vo;
	}
	
//	@Override
//	public String getInfo(HttpServletRequest request, HttpServletResponse response) {
//		
//		String id = (String)request.getSession().getAttribute("user_id");
//		
//		return id;
//	}


	@Override
	public UserVO getInfo(HttpServletRequest request, HttpServletResponse response) {
	
		//세션에서 user_id 값을 얻음
		HttpSession session = request.getSession();
		//로그인을 했을 당시에 controller에 user_id로 저장했음(세션에 저장된 키는 중요함)
		String id = (String)session.getAttribute("user_id");
		//dao 객체 생성해서 호출하고 
		UserDAO dao = UserDAO.getInstance();
		UserVO vo = dao.getInfo(id); //DAO에서 반환되서 돌아오는 vo
		
		return vo;
	}


	@Override
	public int update(HttpServletRequest request, HttpServletResponse response) {
		//파란색은 태그의 네임값(modify.jsp name = "name") 이런식으로 태그 값이 들어가야함
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String contactnumber = request.getParameter("contactnumber");
		String email = request.getParameter("email");
		String introduction = request.getParameter("introduction");
		//DAO객체 생성
		UserDAO dao = UserDAO.getInstance();
		int result = dao.update(id, pw, name, gender, contactnumber, email, introduction);
		
		//업데이트 성공시 세션 변경
		if(result == 1) {
			HttpSession session = request.getSession();
			session.setAttribute("user_name", name);
		}
		
		return result;
		
	}
	
	
	@Override
	public int delete(HttpServletRequest request, HttpServletResponse response) {
		//id가 필요
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user_id");
		
		//DAO 객체 생성
		UserDAO dao = UserDAO.getInstance();
		int result = dao.delete(id);
		
		if(result == 1) { //삭제 성공
			session.invalidate();
		}
		
		return result;
	}

	

}
