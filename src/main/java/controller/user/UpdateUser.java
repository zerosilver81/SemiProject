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
 * Servlet implementation class UpdateUser
 */
@WebServlet(name = "userUpdate", urlPatterns = { "/userUpdate" })
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDTO user;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		
		HttpSession session = request.getSession();
		//사용자 수정 정보 받기
		int memberIdx = Integer.parseInt(request.getParameter("memberIdx"));
		String memberId = (String)session.getAttribute("memberId");
		String memberPass1 = request.getParameter("memberPass1");
		String memberPass2 = request.getParameter("memberPass2"); 
		String memberName = request.getParameter("memberName");
		String memberEmail = request.getParameter("memberEmail");
		
		RequestDispatcher dispatcher = null;
		String message = null;
		
		
		if(session == null) {
			message="로그인을 해주세요.";
			request.setAttribute("alert", message);
			
			dispatcher = request.getRequestDispatcher("user.jsp");
			dispatcher.forward(request, response);
		}
		
		if(memberPass1 == null || memberPass2 == null || memberName == null || memberEmail == null) {
			
			message="공백을 채워주세요.";
			request.setAttribute("alert", message);
			
			dispatcher = request.getRequestDispatcher("user.jsp");
			dispatcher.forward(request, response);
			
		} else {
		
			if(!memberPass1.equals(memberPass2)) {
				
				message="비밀번호가 일치하지 않습니다. 다시 입력해주세요.";			
				request.setAttribute("alert", message);
				
				dispatcher = request.getRequestDispatcher("user.jsp");
				dispatcher.forward(request, response);
				
			} else {
				
				DBManager dbm = null;
				
				if(dbm == null){
					dbm = new DBManager();
				}
				
					
				user = new UserDTO(memberIdx, memberId, memberPass1, memberName, memberEmail);				
				
				dbm.userUpdate(user);
				
				session.setAttribute("user", user);
				
				
	
				dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
				
				}
			
		}
	
	}

}
