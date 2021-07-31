package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBManager;
import dto.UserDTO;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet(name = "register", urlPatterns = { "/register" })
public class RegisterServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private DBManager dbm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String memberPass = request.getParameter("memberPass");
		String memberName = request.getParameter("memberName");
		String memberEmail = request.getParameter("memberEmail");
		
		RequestDispatcher dispatcher = null;
		String message = null;
		
		if(loginId.equals("")||memberPass.equals("")||memberName.equals("")||memberEmail.equals("")) {
			
			message = "공백을 채워주세요.";
			request.setAttribute("alert", message);
			
			dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}else {
			//회원정보 저장		
			UserDTO user = new UserDTO();
			user.setLoginId(loginId);
			user.setPassword(memberPass);
			user.setUserName(memberName);
			user.setUserEmail(memberEmail);
			
			
			//String state="";
			
			// 한번만 DataMapper객체 생성
			if(dbm == null){
				dbm = new DBManager();
			}
			
			dbm.setMember(user);
			
			//처리 전송
			String location="/blog/index.jsp";
			response.sendRedirect(location);
		}
	}

}
