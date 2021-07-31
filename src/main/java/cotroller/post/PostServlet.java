package cotroller.post;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBManager;
import dto.PostDTO;
import dto.UserDTO;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet(name = "post", urlPatterns = { "/post" })
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DBManager dbm = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		String check = request.getParameter("post_check");
		String file = request.getParameter("uploadFile");
		String title = request.getParameter("post-title");
		String writing = request.getParameter("write-content");
		
		RequestDispatcher dispatcher;

		// 쓰기 내용이 있으면 목록추가
		if (!writing.equals("")) {
			HttpSession session = request.getSession();
			// 로그인한 사용자 정보 얻기 (세션)
			UserDTO user = (UserDTO) session.getAttribute("user");

			// 한번만 DataMapper객체 생성
			if(dbm == null){
				dbm = new DBManager();
			}

			// 로그인 사용자정보와 기록내용을 인수목록에 추가하는 메소드
//			dbm.setWriting(user, writing);

			// 쓰기내용 추가후 목록 검색
			ArrayList<PostDTO> post = dbm.getPostList();

			// 목록 세션 저장
			session.setAttribute("post", post);
		}

		// 글상세보기.jsp 처리 전송
		dispatcher = request.getRequestDispatcher("blog-details.jsp");
		dispatcher.forward(request, response);

	}

}
