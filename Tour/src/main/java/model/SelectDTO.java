package model;

public class SelectDTO {

	/*
	 * 유저 선택 카테고리
	 * ID
	 * 카테고리
	 * 지역
	 * 난이도
	 * 길이
	 * 소요시간
	 * 식수
	 * 화장실
	 * 마트
	 * 키워드
	 * 취향결과
	*/
	
	private String uid;		// 아이디
	private int category;	// 카테고리
	private String area;	// 지역
	private int level;		// 난이도
	private int length;		// 길이
	private int time;		// 소요시간
	private int water;		// 식수
	private int toilet;		// 화장실
	private int mart;		// 마트
	private String keyword;	// 키워드
	private String pref;	// 취향 결과
	
	public SelectDTO() {
		super();
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getWater() {
		return water;
	}

	public void setWater(int water) {
		this.water = water;
	}

	public int getToilet() {
		return toilet;
	}

	public void setToilet(int toilet) {
		this.toilet = toilet;
	}

	public int getMart() {
		return mart;
	}

	public void setMart(int mart) {
		this.mart = mart;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getPref() {
		return pref;
	}

	public void setPref(String pref) {
		this.pref = pref;
	}

}
