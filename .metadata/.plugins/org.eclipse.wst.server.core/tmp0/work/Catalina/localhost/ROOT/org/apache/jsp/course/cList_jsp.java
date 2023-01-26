/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.82
 * Generated at: 2023-01-03 09:06:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.CourseDTO;
import java.util.List;

public final class cList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1667368432000L));
    _jspx_dependants.put("jar:file:/C:/Team_const/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Tour/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("model.CourseDTO");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

   String area = "n";
   String keyword = "n";
   if(request.getAttribute("area") != null && request.getAttribute("area") != "n"){
      area = String.valueOf(request.getAttribute("area"));
   }
   if(request.getAttribute("keyword") != null && request.getAttribute("keyword") != "n"){
      keyword = String.valueOf(request.getAttribute("keyword"));
   }
   
   int pageNum = 0;
   int total_record = 0;
   int total_page = 0;
   List<CourseDTO> courseList = (List<CourseDTO>)request.getAttribute("list");
   if(request.getAttribute("total_record") != null){
      total_record = ((Integer) request.getAttribute("total_record"));
   }
   if(request.getAttribute("pageNum") != null){
      pageNum = ((Integer) request.getAttribute("pageNum"));
   }
   if(request.getAttribute("total_page") != null){
      total_page = ((Integer) request.getAttribute("total_page"));
   }
   int start = 1;
   int end = 10;
   if(pageNum > 1){
      start = ((pageNum / 10) * 10) + 1;
      if(pageNum % 10 == 0){
         start = ((pageNum / 10) * 10) - 9;
      }
      end = start + 9;
      if(end > total_page){
         end = total_page;
      }
   }

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>여행길</title>\r\n");
      out.write("<!-- style -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../resources/css/bootstrap.min.css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("   body{\r\n");
      out.write("      height:100%;\r\n");
      out.write("      position: relative;\r\n");
      out.write("   }\r\n");
      out.write("   .wrap{\r\n");
      out.write("      padding-bottom: 140px;\r\n");
      out.write("   }\r\n");
      out.write("   .cDetail {\r\n");
      out.write("      height: 80px;\r\n");
      out.write("      background-color: #6f42c1;\r\n");
      out.write("      border-radius: 10px;\r\n");
      out.write("      padding: 20px;\r\n");
      out.write("   }\r\n");
      out.write("   .footer{\r\n");
      out.write("      position: absolute;\r\n");
      out.write("      height: 120px;\r\n");
      out.write("      width: 100%;\r\n");
      out.write("      bottom:0;\r\n");
      out.write("   }\r\n");
      out.write("   a{\r\n");
      out.write("      text-decoration: none !important;\r\n");
      out.write("      color: gray !important;\r\n");
      out.write("   }\r\n");
      out.write("   a:hover{\r\n");
      out.write("      color:#6f42c1 !important;\r\n");
      out.write("   }\r\n");
      out.write("   small{\r\n");
      out.write("      color: gray !important;\r\n");
      out.write("   }\r\n");
      out.write("   input[type=radio]{\r\n");
      out.write("      accent-color: #6f42c1 !important;\r\n");
      out.write("   }\r\n");
      out.write("   .btn_option {\r\n");
      out.write("      width: 90px;\r\n");
      out.write("      height: 30px;\r\n");
      out.write("      border: 1px solid gray !important;\r\n");
      out.write("      border-radius: 5px;\r\n");
      out.write("      font-size: 15px;\r\n");
      out.write("      background-color: transparent;\r\n");
      out.write("      color: gray;\r\n");
      out.write("   }\r\n");
      out.write("   .btn_option:hover {\r\n");
      out.write("      color: #6f42c1;\r\n");
      out.write("      border-color: #6f42c1 !important;\r\n");
      out.write("   }\r\n");
      out.write("   \r\n");
      out.write("   .fw-normal {\r\n");
      out.write("      margin-top: 10px;\r\n");
      out.write("   }\r\n");
      out.write("   hr {\r\n");
      out.write("   margin-bottom: 20px !important;\r\n");
      out.write("   }\r\n");
      out.write("   .pnum{\r\n");
      out.write("   margin-top: 40px;\r\n");
      out.write("   }\r\n");
      out.write("   h3 {\r\n");
      out.write("   color: gray;\r\n");
      out.write("   }\r\n");
      out.write("   \r\n");
      out.write("</style>\r\n");
      out.write("<!-- script -->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("   <form id=\"selectFrm\" name=\"selectFrm\" action=\"/cList.co\" method=\"post\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("         <div>\r\n");
      out.write("            <span id=\"selectArea\">\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"n\" ");
 if(area.equals("n")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;전체&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"서울\" ");
 if(area.equals("서울")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;서울&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"경기\" ");
 if(area.equals("경기")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;경기&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"인천\" ");
 if(area.equals("인천")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;인천&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"세종\" ");
 if(area.equals("세종")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;세종&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"대전\" ");
 if(area.equals("대전")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;대전&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"충남\" ");
 if(area.equals("충남")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;충남&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"충북\" ");
 if(area.equals("충북")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;충북&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"광주\" ");
 if(area.equals("광주")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;광주&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"전남\" ");
 if(area.equals("전남")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;전남&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"전북\" ");
 if(area.equals("전북")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;전북&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"대구\" ");
 if(area.equals("대구")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;대구&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"경북\" ");
 if(area.equals("경북")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;경북&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"부산\" ");
 if(area.equals("부산")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;부산&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"울산\" ");
 if(area.equals("울산")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;울산&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"경남\" ");
 if(area.equals("경남")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;경남&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"강원\" ");
 if(area.equals("강원")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;강원&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"area\" value=\"제주\" ");
 if(area.equals("제주")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;제주</small>\r\n");
      out.write("            </span>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div>\r\n");
      out.write("            <span id=\"selectArea\">\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"n\" ");
 if(area.equals("n")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;전체&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"자연\" ");
 if(keyword.equals("자연")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;자연&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"체험\" ");
 if(keyword.equals("체험")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;체험&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"전통\" ");
 if(keyword.equals("전통")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;전통&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"종교\" ");
 if(keyword.equals("종교")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;종교&nbsp;&nbsp;</small>\r\n");
      out.write("               <input type=\"radio\" name=\"keyword\" value=\"도시\" ");
 if(keyword.equals("도시")){ 
      out.write("checked");
 } 
      out.write("><small>&nbsp;도시&nbsp;&nbsp;</small>\r\n");
      out.write("            </span>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div style=\"text-align: right;\">\r\n");
      out.write("            <button class=\"btn_option\" type=\"submit\">검색</button>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </form>\r\n");
      out.write("   <div class=\"wrap\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("      <hr color=\"gray\">\r\n");
      out.write("         <div class=\"pricing-header p-3 pb-md-4 mx-auto text-center\">\r\n");
      out.write("            <h3 class=\"fw-normal mb-4\">검색한 여행길</h3>\r\n");
      out.write("            <small class=\"text-muted mb-1\">선택한 지역에 여행길 정보가 <b style=\"color: #6f42c1 !important\">");
      out.print( total_record );
      out.write("</b> 개 준비되어 있습니다.</small><br>\r\n");
      out.write("            <small class=\"text-muted mb-1\">마음에 드는 길 정보의 상세보기를 통해 경로, 길이, 예상 시간, 편의시성 등의 세부정보를 확인하실 수 있습니다.</small>\r\n");
      out.write("         </div>\r\n");
      out.write("         ");
   if(total_record == 0){ 
      out.write("\r\n");
      out.write("            <div class=\"row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3\">\r\n");
      out.write("               <div class=\"col mx-auto\">\r\n");
      out.write("                  <p>코스가 존재하지 않습니다.</p>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("         ");
   } else {   
      out.write("\r\n");
      out.write("            <div class=\"row row-cols-md-5 cols-md-1 g-3\">\r\n");
      out.write("               ");
   
                  for(int i = 0; i < courseList.size(); i++){ 
                     CourseDTO course = (CourseDTO) courseList.get(i);
               
      out.write("\r\n");
      out.write("                     <div class=\"col\">\r\n");
      out.write("                        <div class=\"card shadow-sm\">\r\n");
      out.write("                           <img src=\"../resources/images/");
      out.print( (int)(Math.random() * 100) );
      out.write(".jpg\" alt=\"x\">\r\n");
      out.write("                           <div class=\"card-body\">\r\n");
      out.write("                              <p class=\"card-text text-truncate\" data-toggle=\"tooltip\" title=\"");
      out.print( course.getCadit());
      out.write("\" style=\"font-size: 15px; color: gray;\">");
      out.print( course.getCadit() );
      out.write("</p>\r\n");
      out.write("                              <div class=\"d-flex justify-content-between align-items-center\">\r\n");
      out.write("                                 <div class=\"btn-group text-truncate\">\r\n");
      out.write("                                    <small class=\"text-muted text-truncate\" data-toggle=\"tooltip\" title=\"");
      out.print( course.getCname());
      out.write('"');
      out.write('>');
      out.print( course.getCname() );
      out.write("</small>\r\n");
      out.write("                                 </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                              <button class=\"btn_option\" onclick=\"location.href='/cDetail.co?cno=");
      out.print( course.getCno());
      out.write("&pageNum=");
      out.print( pageNum);
      out.write("'\" style=\"float: right;\">상세보기</button>\r\n");
      out.write("                           </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("               ");
   } 
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 페이징 -->\r\n");
      out.write("      <div align=\"center\" class=\"pnum\">\r\n");
      out.write("         ");
   if(pageNum > 1){ 
      out.write("\r\n");
      out.write("            <a href=\"/cList.co?pageNum=1&area=");
      out.print( area );
      out.write("&keyword=");
      out.print( keyword );
      out.write("\">첫페이지&nbsp;&nbsp;</a>\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("         ");
   if(pageNum > 10){ 
      out.write("\r\n");
      out.write("            <a href=\"/cList.co?pageNum=");
      out.print( start - 10 );
      out.write("&area=");
      out.print( area );
      out.write("&keyword=");
      out.print( keyword );
      out.write("\">이전페이지&nbsp;&nbsp;</a>\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("         ");
   for(int i = start; i <= end; i++){ 
      out.write("\r\n");
      out.write("            ");
   if(i > total_page) break; 
      out.write("\r\n");
      out.write("            ");
   if(start < total_page){ 
      out.write("\r\n");
      out.write("               <a href=\"/cList.co?pageNum=");
      out.print( i );
      out.write("&area=");
      out.print( area );
      out.write("&keyword=");
      out.print( keyword );
      out.write("\">\r\n");
      out.write("                  ");
 if(pageNum == i){ 
      out.write("\r\n");
      out.write("                        <font color='#6f42c1'><b> [");
      out.print( i );
      out.write("]</b></font>\r\n");
      out.write("                  ");
   } else { 
      out.write("   \r\n");
      out.write("                        <font color='gray'> [");
      out.print( i );
      out.write("]</font>\r\n");
      out.write("                  ");
   } 
      out.write("\r\n");
      out.write("               </a>\r\n");
      out.write("            ");
   }   
      out.write("\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("         ");
   if(start == total_page){
      out.write("\r\n");
      out.write("            <font color='red'><b> [");
      out.print( start );
      out.write("]</b></font>\r\n");
      out.write("         ");
   }   
      out.write("\r\n");
      out.write("         ");
   if(pageNum < total_page - 10){ 
      out.write("\r\n");
      out.write("            <a href=\"/cList.co?pageNum=");
      out.print( end + 1 );
      out.write("&area=");
      out.print( area );
      out.write("&keyword=");
      out.print( keyword );
      out.write("\">&nbsp;&nbsp;다음페이지</a>\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("         ");
   if(pageNum < total_page){ 
      out.write("\r\n");
      out.write("            <a href=\"/cList.co?pageNum=");
      out.print( total_page );
      out.write("&area=");
      out.print( area );
      out.write("&keyword=");
      out.print( keyword );
      out.write("\">&nbsp;&nbsp;마지막페이지</a>\r\n");
      out.write("         ");
   } 
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("   </div>\r\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}