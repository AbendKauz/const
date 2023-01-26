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

import model.CourseDAO;
import model.CourseDTO;

@WebServlet("/CourseController")
public class CourseController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    static final int LISTCOUNT = 5;
    
    public CourseController() {
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
		
		if(command.equals("/cList.co")) {
			selectList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./course/cList.jsp");
			rd.forward(request, response);
		}else if(command.equals("/cDetail.co")) {
			selectView(request);
			RequestDispatcher rd = request.getRequestDispatcher("./course/cDetail.jsp");
			rd.forward(request, response);
		}
		
		
	}

	// 코스 리스트 호출
	private void selectList(HttpServletRequest request) {
		CourseDAO dao = CourseDAO.getInstance();
		List<CourseDTO> clist = new ArrayList<CourseDTO>();
		
		int pageNum = 1;
		int limit = 5;
		String area = "n";
		String keyword = "n";
		
		if(request.getParameter("pageNum") != null && request.getParameter("pageNum") != "n") {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		if(request.getParameter("area") != null && request.getParameter("area") != "n") {
			area = request.getParameter("area");
		}
		if(request.getParameter("keyword") != null && request.getParameter("keyword") != "n") {
			keyword = request.getParameter("keyword");
		}
		
		// 코스 개수 확인
		int total_record = dao.selectCount(area, keyword);
		
		clist = dao.getCourseList(pageNum, limit, area, keyword);
		
		
		int total_page;
		
		if(total_record % limit == 0) {
			total_page = total_record / limit;
			Math.floor(total_page);
		}else {
			total_page = total_record / limit;
			Math.floor(total_page);
			total_page++;
		}
		
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("area", area);
		request.setAttribute("keyword", keyword);
		request.setAttribute("total_page", total_page);
		request.setAttribute("total_record", total_record);
		request.setAttribute("list", clist);
	}

	// 코스 상세보기
	private void selectView(HttpServletRequest request) {
		CourseDAO dao = CourseDAO.getInstance();
		String num = request.getParameter("cno");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		CourseDTO course = new CourseDTO();
		course = dao.getBoardNum(num, pageNum);
		
		request.setAttribute("num", num);
		request.setAttribute("page", pageNum);
		request.setAttribute("course", course);
		
	}
	
}
