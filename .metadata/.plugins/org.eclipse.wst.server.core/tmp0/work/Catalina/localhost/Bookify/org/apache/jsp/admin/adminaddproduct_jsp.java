/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.91
 * Generated at: 2024-02-21 09:51:37 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class adminaddproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

 public Connection con;
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/admin/footer.jsp", Long.valueOf(1704524837176L));
    _jspx_dependants.put("/admin/header.jsp", Long.valueOf(1708277147540L));
    _jspx_dependants.put("/admin/connection.jsp", Long.valueOf(1703817573301L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/style.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/all.min.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-dark bg-dark py-4\">\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("      <h1 class=\"navbar-brand mb-0 h1 \">Welcome ");
 out.print(session.getAttribute("adminname")); 
      out.write("</h1>\r\n");
      out.write("      <a class=\"btn btn-light\" href=\"./adminlogout.jsp\" type=\"button\">Logout</a>\r\n");
      out.write("    </div>\r\n");
      out.write("  </nav>\r\n");
      out.write("\r\n");
      out.write("  <nav class=\"navbar navbar-expand-lg secondnavbar\">\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\r\n");
      out.write("     \r\n");
      out.write("      <ul class=\"navbar-nav\">\r\n");
      out.write("     \r\n");
      out.write("        <li class=\"nav-item active\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./index.jsp\">Home</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./admincategory.jsp\">category</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./adminproduct.jsp\">Product</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./adminOrder.jsp\">Order</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        \r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./adminregisteruser.jsp\">User</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./adminfeedback.jsp\">FeedBack</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item\">\r\n");
      out.write("          <a class=\"nav-link\" href=\"./admincontact.jsp\">Conatct</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item \">\r\n");
      out.write("          <a class=\"nav-link\" href=\"adminProfile.jsp\">Profile</a>\r\n");
      out.write("        </li>\r\n");
      out.write("\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </nav>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"./javascript/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    <script src=\"./javascript/all.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');

try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/bookify","root","");
	
}catch(Exception e)
{
	System.out.println(e);
}
     

      out.write("\r\n");
      out.write("\r\n");
 
   Statement st=con.createStatement();
	  ResultSet rs;
	  
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Product</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <section class=\"py-5\">\r\n");
      out.write("        <div class=\"container bg-light py-5\">\r\n");
      out.write("            <div class=\"row py-3\">\r\n");
      out.write("                <div class=\"col text-center\">\r\n");
      out.write("                    <h3>Add New Book </h3>\r\n");
      out.write("                    <span class=\"line\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row px-5\">\r\n");
      out.write("                <div class=\"col justify-content-around\">\r\n");
      out.write("                    <div class=\"card ms-auto px-4 py-3\">\r\n");
      out.write("                      \r\n");
      out.write("                        <form id=\"adminaddprouctform\" method=\"post\" action=\"../insertproduct\" enctype=\"multipart/form-data\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\" m-3 border-3 \">\r\n");
      out.write("                                <input type=\"text\" id=\"pro_name\" name=\"pro_name\" class=\"form-control\" placeholder=\"Name\">\r\n");
      out.write("                                <label for=\"pnamemsg\" id=\"pnamemsg\" class=\" d-none errmsg form-label m-0 p-0\">Name is Required</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\" m-3 border-3 \">\r\n");
      out.write("                                <input type=\"text\" id=\"pro_details\" name=\"pro_details\" class=\"form-control\" placeholder=\"Enter the Details..\">\r\n");
      out.write("                                <label for=\"prodetailsmsg\" id=\"prodetailsmsg\"  class=\" d-none errmsg form-label m-0 p-0\">Some details fill up</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                           \r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"m-3 form-group  border-3 col-4 \">\r\n");
      out.write("                                    <input type=\"text\" id=\"author\" name=\"author\" class=\"form-control\"  placeholder=\"Author\">\r\n");
      out.write("                                    <label for=\"authormsg\" id=\"authormsg\" class=\" d-none errmsg form-label\">Author is Required</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"m-3 form-group  border-3 col-5\">\r\n");
      out.write("                                    <input type=\"text\" id=\"publisher\" name=\"publisher\" class=\"form-control\" placeholder=\"publisher\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                           \r\n");
      out.write("                            <div class=\" m-3  border-3 \">\r\n");
      out.write("                                <input type=\"file\" name=\"image1\" id=\"image1\" class=\"form-control-lg\" placeholder=\"Select Image\">\r\n");
      out.write("                                <label for=\"pimagemsg\" id=\"pimagemsg\" class=\" d-none errmsg form-label\">Please select the image</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"m-3 col-3 border-3 \">\r\n");
      out.write("                                    <input type=\"text\" id=\"pprice\" name=\"pprice\" class=\"form-control\"  placeholder=\"Price..\">\r\n");
      out.write("                                    <label for=\"ppricemsg\" id=\"ppricemsg\" class=\" d-none errmsg form-label\">Price is Required</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"m-3 col-3 border-3 \">\r\n");
      out.write("                                    <input type=\"text\" id=\"pquantity\" name=\"pquantity\" class=\"form-control\" placeholder=\"Quantity..\">\r\n");
      out.write("                                    <label for=\"pquantitymsg\" id=\"pquantitymsg\" class=\" d-none errmsg form-label\">Quantity is Required</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"m-3 col-3  border-3 \">\r\n");
      out.write("                                    <input type=\"text\" id=\"sale\" name=\"sale\" class=\"form-control\" placeholder=\"sale\">\r\n");
      out.write("                                    <label for=\"salemsg\" id=\"salemsg\" class=\" d-none errmsg form-label\">Sale is  Required</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                         \r\n");
      out.write("                            <div class=\"m-3  border-3\">\r\n");
      out.write("                                <select class=\"form-select form-control-lg mb-3\" name=\"category\" id=\"category\"\r\n");
      out.write("                                    aria-label=\"Default select example\">\r\n");
      out.write("                                    <option value=\"blank\">Select category</option>\r\n");
      out.write("                                    ");
 rs=st.executeQuery("SELECT * FROM category");
                                    while(rs.next()){
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                    <option value=\"");
 out.println(rs.getInt(1));
      out.write("\">\r\n");
      out.write("                                        ");
 out.println(rs.getString("cat_name")); 
      out.write("</option>\r\n");
      out.write("                                    ");
 } 
      out.write("\r\n");
      out.write("                                </select>\r\n");
      out.write("                                <label for=\"pcategorymsg\" id=\"pcategorymsg\" class=\" d-none errmsg form-label\">Please select the Category</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            \r\n");
      out.write("                            <div class=\"m-3  border-3\">\r\n");
      out.write("                                <input type=\"submit\" class=\"btn btn-primary btn-block mb-4 w-25\" value=\"Submit\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("     <script src=\"./javascript/addproscript.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"./css/all.min.css\" />\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <title>footer</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write(" \r\n");
      out.write("  <footer id=\"footer\" class=\"bg-dark text-light py-3 footer container-fluid\">\r\n");
      out.write("    <div class=\"container text-center \">\r\n");
      out.write("      <h4>Developed by: Drashti Padia</h4>     \r\n");
      out.write("    </div>\r\n");
      out.write("  </footer>\r\n");
      out.write("\r\n");
      out.write("  <script src=\"./javascript/bootstrap.js\"></script>\r\n");
      out.write("  <script src=\"./javascript/all.min.js\"></script>\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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