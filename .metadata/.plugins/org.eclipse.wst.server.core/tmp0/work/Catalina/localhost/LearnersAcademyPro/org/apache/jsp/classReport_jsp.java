/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.61
 * Generated at: 2021-09-29 17:47:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.report.dao.*;

public final class classReport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("com.report.dao");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Learners Academy</title>\r\n");
      out.write("\r\n");
      out.write("     <style>\r\n");
      out.write("#customers {\r\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("  border-collapse: collapse;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#customers td, #customers th {\r\n");
      out.write("  border: 1px solid #ddd;\r\n");
      out.write("  padding: 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#customers tr:nth-child(even){background-color: #f2f2f2;}\r\n");
      out.write("\r\n");
      out.write("#customers tr:hover {background-color: #ddd;}\r\n");
      out.write("\r\n");
      out.write("#customers th {\r\n");
      out.write("  padding-top: 12px;\r\n");
      out.write("  padding-bottom: 12px;\r\n");
      out.write("  text-align: left;\r\n");
      out.write("  background-color: red;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
HttpSession session1=request.getSession();


    if(session.getAttribute("uname")==null)
    {

    	 response.sendRedirect("Login.jsp");
    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\"><label ><h1 class=\"text-center text-info\"><font color=\"0C6486\" size=\"50px\"><b>Learners Academy</b></font></h1></label>\r\n");
      out.write(" <img src=\"D:\\Phase2Project\\LearnersAcademyPro\\1.png\" style=\"width:70px;height:80px;\" align=\"middle\"></div>\r\n");
      out.write("   <div class=\"form-group\" align=\"center\" >\r\n");
      out.write("   <form id=\"logout\" class=\"form\" action=\"logout\" method=\"post\">\r\n");
      out.write("                                \r\n");
      out.write("    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=\"submit\" name=\"submit\" class=\"btn btn-info btn-md\" value=\"logout\">\r\n");
      out.write("    </form>\r\n");
      out.write("                            </div>\r\n");
      out.write("    <div id=\"login\">\r\n");
      out.write("      <h3 class=\"text-center text-info\">Class");
      out.print(request.getParameter("cls") );
      out.write(" Report</h3>\r\n");
      out.write("     \r\n");
      out.write("        <div class=\"container\" width=\"100%\">\r\n");
      out.write("         \r\n");
      out.write("            <div id=\"login-row\" class=\"row justify-content-center align-items-center\">\r\n");
      out.write("                <div id=\"login-column\" class=\"col-md-6\">\r\n");
      out.write("                    <div id=\"login-box\" class=\"col-md-12\">\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                     <form id=\"clsReport\" class=\"form\" action=\"\"  name=\"clsReport\" >\r\n");
      out.write("                            <h3 class=\"text-info\"></h3>\r\n");
      out.write("                          \r\n");
      out.write("                       \r\n");
      out.write("  ");

	String classId=request.getParameter("cls");
	 
	ReportDao ob=new ReportDao();
	ResultSet rs=ob.getStudents(Integer.parseInt(classId));
	
	String stuData="";
	try {
		
		out.write("<table id='customers'>" +
			       "<tr style='background-color:#c8dce0'>" +
			       "<td >SNo</td>" +
			       "<td ></td>"+
			       "<td>Student Name</td>" +
			       "<td ></td>" + 
			       "<td>Subject</td>" +
			       "<td ></td>" +
			       "<td>Teacher</td>" +
			       "<td ></td>" +
			       "</tr>");
		while(rs.next())
		{
		
			        out.write("<tr>");
				    out.write("<td>");
				    out.write(rs.getString(1));
				    out.write("</td><td></td><td>");
				    out.write(rs.getString(2)+" "+rs.getString(3));
				    out.write("</td><td></td><td>");
				    out.write("status");
				    out.write("</td><td></td><td>");
				    out.write("lastDatxsdsde");
				    out.write("</td><td></td></tr>"); 
			
	
			
		}
		 out.write("</table>"); 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                            \r\n");
      out.write("                        </form>\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("              \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
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
