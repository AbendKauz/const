package model;

public class ReviewDTO {

	/*
	 * 리뷰 정보 column
	 * 리뷰번호
	 * 작성자 ID
	 * 제목
	 * 내용
	 * 사진 이미지
	 * 저장된 파일명
	 * 등록 날짜
	 * 조회수
	*/
	
	private int rbno;			// 리뷰 번호
	private String rid;			// 작성자 ID
	private String rtitle;		// 제목
	private String rcont;		// 내용
	private String oimgData;	// 사진이미지
	private String simgData;	// 저장된 파일명
	private String regDate;		// 등록날짜
	private int readCnt;		// 조회수
	
	public ReviewDTO() {
		super();
	}

	public int getRbno() {
		return rbno;
	}

	public void setRbno(int rbno) {
		this.rbno = rbno;
	}

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRcont() {
		return rcont;
	}

	public void setRcont(String rcont) {
		this.rcont = rcont;
	}

	public String getOimgData() {
		return oimgData;
	}

	public void setOimgData(String oimgData) {
		this.oimgData = oimgData;
	}

	public String getSimgData() {
		return simgData;
	}

	public void setSimgData(String simgData) {
		this.simgData = simgData;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getReadCnt() {
		return readCnt;
	}

	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}

}
