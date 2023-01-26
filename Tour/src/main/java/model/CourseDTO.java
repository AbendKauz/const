package model;

public class CourseDTO {
	
	/*
	 * 코스정보 column
	 *  경로 ID
	 *  산책경로 구분명
	 *  산책경로명
	 *  경로 설명
	 *  시군구명
	 *  경로레벨명
	 *  경로 상세 길이 내용
	 *  추가 설명
	 *  경로 시간 내용
	 *  옵션 설명
	 *  화장실 설명
	 *  편의시설명
	 *  키워드
	*/
	
	private String cno;			// 경로 ID
	private String cname;		// 산책경로 구분명
	private String cdetail;		// 산책경로명
	private String ccontent;	// 경로 설명
	private String carea;		// 시군구명
	private String clevel;		// 경로레벨명
	private String cleng;		// 경로상세길이내용
	private String cadit;		// 추가 설명
	private String ctime;		// 경로시간내용
	private String copt;		// 옵션 설명
	private String ctoi;		// 화장실 설명
	private String ccvntl;		// 편의시설명
	private String keyword;		// 키워드
	
	public CourseDTO() {
		super();
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCdetail() {
		return cdetail;
	}

	public void setCdetail(String cdetail) {
		this.cdetail = cdetail;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCarea() {
		return carea;
	}

	public void setCarea(String carea) {
		this.carea = carea;
	}

	public String getClevel() {
		return clevel;
	}

	public void setClevel(String clevel) {
		this.clevel = clevel;
	}

	public String getCleng() {
		return cleng;
	}

	public void setCleng(String cleng) {
		this.cleng = cleng;
	}

	public String getCadit() {
		return cadit;
	}

	public void setCadit(String cadit) {
		this.cadit = cadit;
	}

	public String getCtime() {
		return ctime;
	}

	public void setCtime(String ctime) {
		this.ctime = ctime;
	}

	public String getCopt() {
		return copt;
	}

	public void setCopt(String copt) {
		this.copt = copt;
	}

	public String getCtoi() {
		return ctoi;
	}

	public void setCtoi(String ctoi) {
		this.ctoi = ctoi;
	}

	public String getCcvntl() {
		return ccvntl;
	}

	public void setCcvntl(String ccvntl) {
		this.ccvntl = ccvntl;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

}
