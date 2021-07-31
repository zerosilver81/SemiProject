package dto;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UserDTO {
	private int memberIdx; //회원 index
	private String memberId; //회원 id
	private String memberPass; //회원 비밀번호
	private String memberName; //회원 이름
	private String memberEmail; //회원 이메일

	//생성자
	public UserDTO() {
		
	}
	
	// this생성자
	public UserDTO(int memberIdx, String memberId, String memberPass, String memberName, String memberEmail) {
		this.memberIdx = memberIdx; //auto increment이기 때문에 insert 할 때는 안쓴다.
		this.memberId = memberId;
		this.memberPass = memberPass;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
	}
	
	//updateUser 이용 생성자
	public UserDTO(int memberIdx, String memberPass, String memberName, String memberEmail) {
		this.memberIdx = memberIdx;
		this.memberPass = memberPass;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
	}
	
	public int getMemberIdx() {
		return memberIdx;
	}
	
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	
	public String getLoginId() {
		return memberId;
	}

	public void setLoginId(String memberId) {
		this.memberId = memberId;
	}

	public String getPassword() {
		return memberPass;
	}

	public void setPassword(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getUserName() {
		return memberName;
	}

	public void setUserName(String memberName) {
		this.memberName = memberName;
	}

	public String getUserEmail() {
		return memberEmail;
	}

	public void setUserEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
}
