package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.DBConnection;

public class CourseDAO {

	private static CourseDAO instance;
	
	private CourseDAO() {
		
	}

	public static CourseDAO getInstance() {
		if (instance == null)
			instance = new CourseDAO();
		return instance;
	}

	// 코스 개수
	public int selectCount(String area, String keyword) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		
		String sql = "select count(*) from course";
		
		if(area != null && !area.equals("n") || keyword != null && !keyword.equals("n")) {
			sql += " where";
			if(area != null && !area.equals("n")) {
				sql += " SIGNGU_NM like '%" + area + "%'";
				if(keyword != null && !keyword.equals("n")) {
					sql += " and";
				}
			}
			if(keyword != null && !keyword.equals("n")) {
				sql += " KEYWORD like '%" + keyword + "%'";
			}
		}
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) result = rs.getInt(1);
			
		} catch(Exception e) {
			System.out.println("코스 개수 카운트 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return result;
	}

	// 코스 리스트
	public List<CourseDTO> getCourseList(int pageNum, int limit, String area, String keyword) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int start = (pageNum - 1) * limit;	// 시작위치
		
		String sql = "select * from course";
		
		if(area != null && !area.equals("n") || keyword != null && !keyword.equals("n")) {
			sql += " where";
			if(area != "n") {
				sql += " SIGNGU_NM like '%" + area + "%'";
				if(keyword != null && !keyword.equals("n")) {
					sql += " and";
				}
			}
			if(keyword != null && !keyword.equals("n")) {
				sql += " KEYWORD like '%" + keyword + "%'";
			}
		}
		sql += " order by ESNTL_ID desc limit ?, ?";
		ArrayList<CourseDTO> list = new ArrayList<CourseDTO>();
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CourseDTO dto = new CourseDTO();
				dto.setCno(rs.getString("ESNTL_ID"));
				dto.setCname(rs.getString("WLK_COURS_FLAG_NM"));
				dto.setCdetail(rs.getString("WLK_COURS_NM"));
				dto.setCcontent(rs.getString("COURS_DC"));
				dto.setCarea(rs.getString("SIGNGU_NM"));
				dto.setClevel(rs.getString("COURS_LEVEL_NM"));
				dto.setCleng(rs.getString("COURS_DETAIL_LT_CN"));
				dto.setCadit(rs.getString("ADIT_DC"));
				dto.setCtime(rs.getString("COURS_TIME_CN"));
				dto.setCopt(rs.getString("OPTN_DC"));
				dto.setCtoi(rs.getString("TOILET_DC"));
				dto.setCcvntl(rs.getString("CVNTL_NM"));
				dto.setKeyword(rs.getString("KEYWORD"));
				list.add(dto);
			}
			return list;
		} catch(Exception e) {
			System.out.println("코스 리스트 호출 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException();
			}
		}
		
		return null;
	}
	
	// 코스 상세내용보기
	public CourseDTO getBoardNum(String num, int pageNum) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CourseDTO dto = null;
		
		String sql = "select * from course where ESNTL_ID=?";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new CourseDTO();
				dto.setCno(rs.getString("ESNTL_ID"));
				dto.setCname(rs.getString("WLK_COURS_FLAG_NM"));
				dto.setCdetail(rs.getString("WLK_COURS_NM"));
				dto.setCcontent(rs.getString("COURS_DC"));
				dto.setCarea(rs.getString("SIGNGU_NM"));
				dto.setClevel(rs.getString("COURS_LEVEL_NM"));
				dto.setCleng(rs.getString("COURS_DETAIL_LT_CN"));
				dto.setCadit(rs.getString("ADIT_DC"));
				dto.setCtime(rs.getString("COURS_TIME_CN"));
				dto.setCopt(rs.getString("OPTN_DC"));
				dto.setCtoi(rs.getString("TOILET_DC"));
				dto.setCcvntl(rs.getString("CVNTL_NM"));
				dto.setKeyword(rs.getString("KEYWORD"));
			}
			return dto;
		} catch(Exception e) {
			System.out.println("코스 조회 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException();
			}
		}
		return null;
	}

	// (사용자) 코스 상세보기
	public CourseDTO view(String pref) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CourseDTO dto = null;
		
		String sql = "select * from course where WLK_COURS_FLAG_NM=? limit 1";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pref);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new CourseDTO();
				dto.setCno(rs.getString("ESNTL_ID"));
				dto.setCname(rs.getString("WLK_COURS_FLAG_NM"));
				dto.setCdetail(rs.getString("WLK_COURS_NM"));
				dto.setCcontent(rs.getString("COURS_DC"));
				dto.setCarea(rs.getString("SIGNGU_NM"));
				dto.setClevel(rs.getString("COURS_LEVEL_NM"));
				dto.setCleng(rs.getString("COURS_DETAIL_LT_CN"));
				dto.setCadit(rs.getString("ADIT_DC"));
				dto.setCtime(rs.getString("COURS_TIME_CN"));
				dto.setCopt(rs.getString("OPTN_DC"));
				dto.setCtoi(rs.getString("TOILET_DC"));
				dto.setCcvntl(rs.getString("CVNTL_NM"));
				dto.setKeyword(rs.getString("KEYWORD"));
			}
			return dto;
		} catch(Exception e) {
			System.out.println("코스 조회 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException();
			}
		}
		return null;
	}
	
}
