package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import dto.PostDTO;
import dto.UserDTO;

public class DBManager extends BlogDAO {

	// 로그인ID와 비밀번호를 받고 등록된 사용자 목록에 일치하는 것이 있는지 체크 
	public boolean setMember(UserDTO user) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		boolean result = false;
		try {
			conn = getConnection();

		String sql = "INSERT INTO member(member_id, member_pass, member_name, member_email) VALUES (?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user.getLoginId());
		pstmt.setString(2, user.getPassword());
		pstmt.setString(3, user.getUserName());
		pstmt.setString(4, user.getUserEmail());

		int cnt = pstmt.executeUpdate();
		if (cnt == 1) {
			// INSERT문 실행결과 1이면 등록성공 
			result = true;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		// 데이터베이스 닫기 
		close(pstmt);
		close(conn);
	}

	return result;
}
	
	public UserDTO findUserIdPw(String loginId, String memberPass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		//쿼리문 작성
		String sql = "SELECT * FROM member WHERE member_id=? AND member_pass=?";
		UserDTO user = null;
		
		try {
			
			conn = getConnection();
			
			//SELECT문 등록 및 실행
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setString(2, memberPass);
			//실행
			rset = pstmt.executeQuery();
			
			if(rset.next()) {//필요한 열에서 값을 꺼내 사용자 정보 객체 생성
				//DB 컬럼 순서대로 가져오기
				user = new UserDTO();
				user.setMemberIdx(rset.getInt(1));
				user.setLoginId(rset.getString(2));
				user.setPassword(rset.getString(3));
				user.setUserName(rset.getString(4));
				user.setUserEmail(rset.getString(5));
	
			}
				
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//상속을 받고 있기때문에 바로 close메소드 불러오기 가능
			close(rset);
			close(pstmt);
			close(conn);
		}
	
		return user;
	}
	
	public UserDTO findUserId(String loginId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		//쿼리문 작성
		String sql = "SELECT * FROM member WHERE member_id=?";
		UserDTO user = null;
		
		try {
			
			conn = getConnection();
			
			//SELECT문 등록 및 실행
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginId);

			//실행
			rset = pstmt.executeQuery();
			
			if(rset.next()) {//필요한 열에서 값을 꺼내 사용자 정보 객체 생성
				//DB 컬럼 순서대로 가져오기
				user = new UserDTO();
				user.setMemberIdx(rset.getInt(1));
				user.setLoginId(rset.getString(2));
				user.setPassword(rset.getString(3));
				user.setUserName(rset.getString(4));
				user.setUserEmail(rset.getString(5));
				
			}
				
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//상속을 받고 있기때문에 바로 close메소드 불러오기 가능
			close(rset);
			close(pstmt);
			close(conn);
		}
	
		return user;
	}
	
	//정보 수정
	
	public boolean userUpdate(UserDTO user) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		boolean result = false;
		
		try {
			
			conn = getConnection();
		
			//쿼리문 작성
			String sql = "UPDATE member SET member_pass=?, member_name=?, member_email=? WHERE member_idx=?";
		
			//SELECT문 등록 및 실행
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserEmail());
			pstmt.setInt(4, user.getMemberIdx());

			//실행
			result = pstmt.executeUpdate() > 0;
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터베이스 닫기 
			close(pstmt);
			close(conn);
		}

		return result;
	}

	// 로그인 사용자 정보와 기록내용을 받아 목록에 추가
			//글 작성 여부 확인 위해 boolean형 메소드 작성
			//유저를 확인하기 위해 user 인자 받기
			public boolean setWriting(UserDTO user, String title, String content) {
				Connection conn = null;
				PreparedStatement pstmt = null;

				boolean result = false;
				try {
					conn = getConnection();

					// INSERT 문 등록 및 실행 ("?" 연산자에 매핑을 해놓음)
					String sql = "INSERT INTO post(userName, icon, date, writing) VALUES(?, ?, ?, ?)";
					pstmt = conn.prepareStatement(sql);
					//pstmt.setString(1, user.get);
//					pstmt.setString(2, user.getIcon());
//					pstmt.setString(3, sdf.format(calender.getTime()));
//					pstmt.setString(4, writing);

					int cnt = pstmt.executeUpdate();
					if (cnt == 1) {
						// INSERT문 실행결과 1이면 등록성공 
						result = true;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					// 데이터베이스 닫기 
					close(pstmt);
					close(conn);
				}

				return result;
			}
	
	// 쓰기내용 목록 getter
	public ArrayList<PostDTO> getPostList() {
		Connection conn = null;
		Statement pstmt = null;
		ResultSet rset = null;

		ArrayList<PostDTO> list = new ArrayList<PostDTO>();

		try {
			// SnsDAO 클래스 메소드 호출 
			conn = getConnection();
			pstmt = conn.createStatement();

			// SELECT 문 실행 (최근 순서가 위로 오게 하도록 날짜 역순으로 설정)
			String sql = "SELECT * FROM post ORDER BY date DESC";
			rset = pstmt.executeQuery(sql);

			// 검색결과 수만큼 반복 
			while (rset.next()) {
				// 필요한 열에서 값을 꺼내서 쓰기 내용 객체 생성 
				PostDTO post = new PostDTO();
				post.setPostIdx(1);
				post.setPostTitle(rset.getString(2));
				post.setPostContent(rset.getString(3));
				post.setPostLike(1);
				post.setPostCnt(1);
				post.setPostDate(rset.getString(6));
				post.setPostUpdate(rset.getString(7));
				post.setHashtag1(rset.getString(8));
				post.setHashtag2(rset.getString(9));
				

				// 쓰기내용 목록에 추가 
				list.add(post);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 데이터베이스 닫기 
			close(rset);
			close(pstmt);
			close(conn);
		}

		return list;
	}
	
		
		
		
	
}

