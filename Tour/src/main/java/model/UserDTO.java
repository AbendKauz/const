package model;

import java.util.Date;

public class UserDTO {

	/*
	 * 유저 정보 column
	 * ID
	 * 비밀번호
	 * 이름
	 * 전화번호
	 * 취향
	 * 가입일
	 * 좋아요 리뷰 번호
	 * 관리자 여부
	*/
	
	private String uid;			// ID
	private String upw;			// 비밀번호
	private String uname;		// 이름
	private String utel;		// 전화번호
	private String uregDate;	// 가입일
	private int utok;			// 관리자 여부
	
	public UserDTO() {
		super();
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	public String getUregDate() {
		return uregDate;
	}

	public void setUregDate(String uregDate) {
		this.uregDate = uregDate;
	}

	public int getUtok() {
		return utok;
	}

	public void setUtok(int utok) {
		this.utok = utok;
	}
	
}
