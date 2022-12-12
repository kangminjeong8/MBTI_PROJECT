package mbti_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mbti_model.HistoryVO;



public interface MbtiService {
	public int insertHistory(HttpServletRequest request, HttpServletResponse response); // 검사 완료 버튼 누르면 값 DB에 저장
	public ArrayList<HistoryVO> selectHistory(HttpServletRequest request, HttpServletResponse response); // DB에 저장 후 최신순대로 가져오기
}
