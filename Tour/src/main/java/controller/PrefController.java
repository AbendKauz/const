package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CourseDAO;
import model.CourseDTO;
import model.PrefDAO;
import model.SelectDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/PrefController")
public class PrefController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    static final int LISTCOUNT = 5;
    
    public PrefController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request ,HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		System.out.println(command);
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(command.equals("/pCate.pr")) {
			RequestDispatcher rd = request.getRequestDispatcher("./pref/pCategory.jsp");
			rd.forward(request, response);
		}else if(command.equals("/pOpt.pr")) {
			RequestDispatcher rd = request.getRequestDispatcher("./pref/pOption.jsp");
			rd.forward(request, response);
		}else if(command.equals("/pResult.pr")) {
			addUserPre(request);
			RequestDispatcher rd = request.getRequestDispatcher("./pref/pResult.jsp");
			rd.forward(request, response);
		}else if(command.equals("/addPref.pr")) {
			addPref(request);
			selectList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./main/mMain.jsp");
			rd.forward(request, response);
		}else if(command.equals("/cDetail.pr")) {	// ???????????? ????????????
			addPref(request);
			selectList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./user/uDetail.jsp");
			rd.forward(request, response);
		}
	}

	// ???????????? ??????
	private void addUserPre(HttpServletRequest request) {
		// ????????? ?????? ????????? ?????? DAO ?????? ??????
		PrefDAO dao = PrefDAO.getInstance();
		// ???????????? ????????? ???????????? ????????? DTO ??????
		SelectDTO sdto = new SelectDTO();
		sdto.setUid(request.getParameter("id"));
		sdto.setCategory(Integer.parseInt(request.getParameter("category")));
		sdto.setArea(request.getParameter("area"));
		sdto.setLevel(Integer.parseInt(request.getParameter("level")));
		sdto.setLength(Integer.parseInt(request.getParameter("length")));
		sdto.setTime(Integer.parseInt(request.getParameter("time")));
		sdto.setWater(Integer.parseInt(request.getParameter("drink")));
		sdto.setToilet(Integer.parseInt(request.getParameter("toilet")));
		sdto.setMart(Integer.parseInt(request.getParameter("mart")));
		sdto.setKeyword(request.getParameter("keyword"));
		
		dao.addCate(sdto);
	}
	
	// ???????????? ??????
	private void addPref(HttpServletRequest request) {
		PrefDAO dao = PrefDAO.getInstance();
		SelectDTO dto = new SelectDTO();
		dto.setUid(request.getParameter("id"));
		dto.setCategory(Integer.parseInt(request.getParameter("category")));
		dto.setArea(request.getParameter("area"));
		dto.setLevel(Integer.parseInt(request.getParameter("level")));
		dto.setLength(Integer.parseInt(request.getParameter("length")));
		dto.setTime(Integer.parseInt(request.getParameter("time")));
		dto.setWater(Integer.parseInt(request.getParameter("drink")));
		dto.setToilet(Integer.parseInt(request.getParameter("toilet")));
		dto.setMart(Integer.parseInt(request.getParameter("mart")));
		dto.setKeyword(request.getParameter("keyword"));
		dto.setPref(request.getParameter("pref"));
		
		dao.addPref(dto);
	}
	
	// ?????? ????????? ?????? ????????????
	private void selectList(HttpServletRequest request) {
		String pref = request.getParameter("pref");
		CourseDAO dao = CourseDAO.getInstance();
		CourseDTO course = dao.view(pref);
		
		request.setAttribute("course", course);
	}
	
}
