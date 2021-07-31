package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBManager;
import dto.UserDTO;


/**
 * Servlet implementation class Login
 */
@WebServlet(name = "login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//직접 접근 시 index.jsp로 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		//전송정보 얻기
		String loginId = request.getParameter("memberId");
		String password = request.getParameter("memberPass");
		
		RequestDispatcher dispatcher = null;
		String message = null;
		
		if(loginId.equals("") || password.equals("")) {
			//로그인 아이디, 패스워드 모두 공백 상태일 때
			message = "로그인 ID와 비밀번호는 필수 입력입니다.";
			
			//오류 메시지 요청, 객체에 저장
			request.setAttribute("alert", message);
			
			//login.jsp 처리 전송
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}else {
			//로그인 인증하고 사용자 정보 얻기
			DBManager dbm = new DBManager();
			//사용자 정보 일치 찾는 과정
			UserDTO user = dbm.findUserIdPw(loginId, password);
		
			if(user != null) {
				//사용자 정보를 얻을 수 있으면 입력한 내용 목록 가져오기
				HttpSession session = request.getSession();
				
				//로그인 사용자 정보 Session에 저장
				session.setAttribute("user", user);
				session.setAttribute("memberId", loginId);
				
				//처리대상을 index.jsp로 지정
				dispatcher = request.getRequestDispatcher("index.jsp");
				
			} else {
				//사용자 정보를 얻을 수 없는 경우
				//오류 메시지를 요청 객체에 저장
				message = "로그인 ID 또는 비밀번호가 올바르지 않습니다.";
				request.setAttribute("alert", message);
				
				//처리대상 index.jsp 지정
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			//처리 전송
			dispatcher.forward(request, response);
		}
	}

}
