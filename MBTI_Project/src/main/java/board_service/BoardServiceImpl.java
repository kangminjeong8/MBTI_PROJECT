package board_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board_model.BoardDAO;
import board_model.BoardVO;

public class BoardServiceImpl implements BoardService{
	
	@Override // 게시판 글 작성 메서드
	public void write(HttpServletRequest request, HttpServletResponse response) {
		
		String user_id = (String)request.getParameter("user_id");
		String title = (String)request.getParameter("title");
		String content = (String)request.getParameter("content");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		dao.write(user_id, title, content);
	}
	
	
	@Override // 게시판 조회 (ArrayList)
	public ArrayList<BoardVO> getList(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<BoardVO> list = null;
		System.out.println("service test1");
		BoardDAO dao = BoardDAO.getInstance();
		list = dao.getList();
		System.out.println("service test2");
		return list;
	}
	
	public BoardVO getContent(HttpServletRequest request, HttpServletResponse response) {
		
		String board_num = request.getParameter("board_num");
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO vo = dao.getContent(board_num);
		
		return vo;
	}
	
	@Override
	public int update(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		
		BoardDAO dao = BoardDAO.getInstance();
		String board_num = request.getParameter("board_num");
		String user_id = request.getParameter("user_id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		result = dao.update(board_num, user_id, title, content);
		
		return result;
	}

	@Override
	public int delete(HttpServletRequest request, HttpServletResponse response) {
		
		String board_num = request.getParameter("board_num");
		
		int result = BoardDAO.getInstance().delete(board_num);
		
		return result;
	}
	
	@Override
	public String getMbti(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		
		String result = BoardDAO.getInstance().getMbti(user_id);
		
		return result;
	}
	
}
