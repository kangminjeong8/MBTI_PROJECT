package mbti.semin.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.util.Arrays;

import mbti.semin.model.HistoryVO;
import mbti.semin.model.MbtiDAO;
import mbti.semin.model.MbtiVO;


public class MbtiServiceSemin implements MbtiService {

	@Override
	public int insertHistory(HttpServletRequest request, HttpServletResponse response) {
		
		//로그인한 유저의 아이디값 얻기
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("user_id");
		
		//검사해서 나온 mbti 값
		String mbti = (String)request.getAttribute("mbti");
		String mbti2 = mbti.toUpperCase();
		System.out.println(mbti);
		MbtiDAO dao = MbtiDAO.getInstance();
		int result = dao.insertHistory("aaa123", mbti2);
		return result;
	}

	@Override
	public ArrayList<HistoryVO> selectHistory(HttpServletRequest request, HttpServletResponse response) {
		
		//로그인한 유저의 아이디값 얻기
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("user_id");
		String id = (String)request.getAttribute("id");
		MbtiDAO dao = MbtiDAO.getInstance();
		
		ArrayList<HistoryVO> list = dao.selectHistory("aaa123");
		return list;
		
	}


}
