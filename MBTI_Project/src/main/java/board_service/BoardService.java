package board_service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board_model.BoardVO;

public interface BoardService {

	
	public void write(HttpServletRequest request, HttpServletResponse response);
	
	public ArrayList<BoardVO> getList(HttpServletRequest request, HttpServletResponse response);
	
	public BoardVO getContent(HttpServletRequest request, HttpServletResponse response);
	
	public int update(HttpServletRequest request, HttpServletResponse response);

	public int delete(HttpServletRequest request, HttpServletResponse response);
	
	public String getMbti(HttpServletRequest request, HttpServletResponse response);

}
