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

import board_model.BoardVO;
import board_service.BoardService;
import board_service.BoardServiceImpl;

@WebServlet("*.board")
public class board_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		//경로 자르기
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println("요청 경로: " + command);
		
		//세션에서 ID 받아오기
		HttpSession session = request.getSession();
		
		//Service 객체 생성
		BoardService service = new BoardServiceImpl();
		
		switch (command) {
		
		case "/board/board_write.board":
			
			//임시로 풀었음 ////////////////////////////
//			if(session.getAttribute("user_id") == null) {
//				response.sendRedirect("/user/user_login.user");
//				return;
//			}
			
			String mbti = service.getMbti(request, response);
			System.out.println(mbti);
			System.out.println("test");
			
			request.setAttribute("mbti", mbti);
			
			request.getRequestDispatcher("/board/board_write.jsp").forward(request, response);
			
			break;
		
		case "/board/registerForm.board":
			
			
			
			service.write(request, response);
			
			response.sendRedirect("/board/board_list.board");
			
			break;
		
		case "/board/board_list.board":
			ArrayList<BoardVO> list = service.getList(request, response);
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("/board/board_list.jsp").forward(request, response);
			
			
			break;

		case "/board/board_content.board":
			
			BoardVO vo = service.getContent(request, response);
			
			request.setAttribute("vo", vo);
			
			request.getRequestDispatcher("/board/board_content.jsp").forward(request, response);
			
			break;
		
		case "/board/board_modify.board":
			
			BoardVO vo_modi = service.getContent(request, response);
			
			request.setAttribute("vo_modi", vo_modi);
			
			request.getRequestDispatcher("/board/board_modify.jsp").forward(request, response);
			
			break;
			
		case "/board/updateForm.board":
			
			int result = service.update(request, response);
			
			if(result == 1) {
				String msg = "업데이트가 완료되었습니다.";
				response.setContentType("text/html; charset = utf-8");
				PrintWriter out = response.getWriter();
				
				out.println("<script>");
				out.println("alert ('" + msg + "');");
				out.println("location.href = 'board_list.board';");
				out.println("</script>");
			}
			
		break;
		
		case "/board/board_delete.board":
			
			int result2 = service.delete(request, response);

			if(result2 == 1) {
				String msg = "삭제가 완료되었습니다.";
				response.setContentType("text/html; charset = utf-8");
				PrintWriter out = response.getWriter();
				
				out.println("<script>");
				out.println("alert ('" + msg + "');");
				out.println("location.href = 'board_list.board';");
				out.println("</script>");
				
				request.getRequestDispatcher("/board/board_list.board").forward(request, response);
			}
			
			break;
		
		
		default:
			break;
		}
		
		
		
	}

}