package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.DBConnection;

public class PrefDAO {

	private static PrefDAO instance;
	
	private PrefDAO() {
		
	}

	public static PrefDAO getInstance() {
		if (instance == null)
			instance = new PrefDAO();
		return instance;
	}

	// 취향 코스 개수
	public int selectCount(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String sql = "select count(*) from user_pre where uid = ?";
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				if(rs.next()) result = rs.getInt(1);
			}
			
		} catch(Exception e) {
			System.out.println("취향길 리스트 개수 카운트 오류");
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

	// 사용자 선택 취향 리스트 호출
	public List<SelectDTO> getUserPre(String id, int pageNum, int limit) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int total_record = selectCount(id);
		int start = (pageNum - 1) * limit;
		int index = start + 1;
		
		String sql = "select * from user_pre where uid=?";
		
		ArrayList<SelectDTO> list = new ArrayList<SelectDTO>();
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.absolute(index)) {
				SelectDTO dto = new SelectDTO();
				dto.setUid(rs.getString("uid"));
				dto.setCategory(rs.getInt("id"));
				dto.setArea(rs.getString("area"));
				dto.setLevel(rs.getInt("level"));
				dto.setLength(rs.getInt("length"));
				dto.setTime(rs.getInt("time"));
				dto.setWater(rs.getInt("water"));
				dto.setToilet(rs.getInt("toilet"));
				dto.setMart(rs.getInt("mart"));
				dto.setKeyword(rs.getString("keyword"));
				dto.setPref(rs.getString("pref"));
				list.add(dto);
			}
			return list;
		} catch(Exception e) {
			System.out.println("사용자 선택 취향 오류");
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
		return null;
	}

	// 카테고리 등록
	public void addCate(SelectDTO sdto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			
			String sql = "insert into user_pre(uid, id, area, level, length, time, water, toilet, mart, keyword) values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sdto.getUid());
			pstmt.setInt(2, sdto.getCategory());
			pstmt.setString(3, sdto.getArea());
			pstmt.setInt(4, sdto.getLevel());
			pstmt.setInt(5, sdto.getLength());
			pstmt.setInt(6, sdto.getTime());
			pstmt.setInt(7, sdto.getWater());
			pstmt.setInt(8, sdto.getToilet());
			pstmt.setInt(9, sdto.getMart());
			pstmt.setString(10, sdto.getKeyword());
			pstmt.executeUpdate();
		} catch(Exception e) {
			System.out.println("취향길 카테고리 등록 오류 : " + e);
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}

	// 취향 결과 등록
	public void addPref(SelectDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "update user_pre set pref=? where uid=? and id=? and area=? and level=? and length=? and time=? and water=? and toilet=? and mart=? and keyword=?";
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPref());
			pstmt.setString(2, dto.getUid());
			pstmt.setInt(3, dto.getCategory());
			pstmt.setString(4, dto.getArea());
			pstmt.setInt(5, dto.getLevel());
			pstmt.setInt(6, dto.getLength());
			pstmt.setInt(7, dto.getTime());
			pstmt.setInt(8, dto.getWater());
			pstmt.setInt(9, dto.getToilet());
			pstmt.setInt(10, dto.getMart());
			pstmt.setString(11, dto.getKeyword());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			System.out.println("취향길 결과 저장 오류");
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}
	
}
