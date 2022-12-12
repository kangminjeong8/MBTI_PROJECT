package user_service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user_model.UserVO;



public interface UserService {
	
	public int join(HttpServletRequest request, HttpServletResponse response); //가입처리
	public UserVO login(HttpServletRequest request, HttpServletResponse response); //로그인
	//public String getInfo(HttpServletRequest request, HttpServletResponse response);
	
	//do_action 메서드에 담겨있는 것 객체 받아서 service로 넘어감
	public UserVO getInfo(HttpServletRequest request, HttpServletResponse response); //회원정보 조회
	
	//성공 실패를 안받을 때는 void, 성공 실패를 할 때는 int / update, delete는 값을 가지고 나갈 필요가 없어서 UserVO X
	public int update(HttpServletRequest request, HttpServletResponse response); //회원정보 업데이트
	
	public int delete(HttpServletRequest request, HttpServletResponse response);
	

}
