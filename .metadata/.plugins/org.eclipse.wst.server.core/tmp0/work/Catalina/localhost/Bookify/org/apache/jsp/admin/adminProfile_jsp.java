/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.91
 * Generated at: 2024-02-18 18:32:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/admin/footer.jsp", Long.valueOf(1704524837176L));
    _jspx_dependants.put("/admin/header.jsp", Long.valueOf(1708277147540L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("  <title>admin Profile</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <section id=\"adminProfileSection\" class=\"mt-5\">\r\n");
      out.write("    <div class=\"container d-flex justify-content-center\">\r\n");
      out.write("      <h1 class=\"m-auto\">Admin Profile</h1>\r\n");
      out.write("    </div>\r\n");
      out.write("  </section>\r\n");
      out.write("  <section id=\"adminprofile\" class=\"py-5\">\r\n");
      out.write("    <div class=\"container justify-content-around border border-primary-5 bg-light\">\r\n");
      out.write("      <div class=\"row justify-content-around text-center\">\r\n");
      out.write("        <div class=\"col-6 mt-5  py-3\">\r\n");
      out.write("          <h1><a href=\"#\" class=\"text-decoration-none\" onclick=\"showchangepassword();\">Change Password </a></h1><br>\r\n");
      out.write("          <h1><a href=\"#\" class=\"text-decoration-none\" onclick=\"shownewadmin();\">Add new Admin</a></h1>\r\n");
      out.write("          <hr>\r\n");
      out.write("        </div>\r\n");
      out.write("       \r\n");
      out.write("      </div>\r\n");
      out.write("   \r\n");
      out.write("      <div class=\"row justify-content-around\">\r\n");
      out.write("        <div class=\"col-6 mt-4 p-4 \" id=\"changepassword\">\r\n");
      out.write("          <div class=\"w-80\">\r\n");
      out.write("            <h1 class=\"text-center\">Change Password</h1>\r\n");
      out.write("            <form id=\"changepasswordForm\" class=\"row g-3 m-auto bg-light\" method=\"POST\"\r\n");
      out.write("              action=\"adminChangePassword.jsp\">\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"password\" name=\"adminoldpassword\" id=\"adminoldpassword\" placeholder=\"Old Password\"\r\n");
      out.write("                  class=\"form-control w-100 border-1\" />\r\n");
      out.write("                <label for=\"adminoldpwdmsg\" id=\"adminoldpwdmsg\" class=\" d-none errmsg form-label\">Old Password is\r\n");
      out.write("                  Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"password\" name=\"adminnewpassword\" id=\"adminnewpassword\" placeholder=\"New Password\"\r\n");
      out.write("                  class=\"form-control w-100 border-1\" />\r\n");
      out.write("                <label for=\"adminnewpwdmsg\" id=\"adminnewpwdmsg\" class=\" d-none errmsg form-label\">New Password is\r\n");
      out.write("                  Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"password\" name=\"admincpassword\" id=\"admincpassword\" placeholder=\"Confirm Password\"\r\n");
      out.write("                  class=\"form-control w-100 border-1\" />\r\n");
      out.write("                <label for=\"adminnewcpwdmsg\" id=\"adminnewcpwdmsg\" class=\" d-none errmsg form-label\">Confirm Password is\r\n");
      out.write("                  Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-12 pb-4\">\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary w-100\">Change Password</button>\r\n");
      out.write("              </div>\r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-8 mt-4 p-4 d-none\" id=\"newadmin\">\r\n");
      out.write("          <div class=\"w-80\">\r\n");
      out.write("            <h1 class=\"text-center\">Create New Admin</h1>\r\n");
      out.write("\r\n");
      out.write("            <form id=\"addadminform\" class=\"row g-3 m-auto bg-light\" method=\"POST\" action=\"insertNewAdmin.jsp\">\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"text\" name=\"newadminname\" id=\"newadminname\" placeholder=\"Enter Admin Name...\"\r\n");
      out.write("                  class=\"form-control w-100 border-1\" />\r\n");
      out.write("                <label for=\"newanamemsg\" id=\"newanamemsg\" class=\" d-none errmsg form-label\">Name is Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"password\" id=\"newadminpassword\" name=\"newadminpassword\"\r\n");
      out.write("                  placeholder=\"Enter Your password...\" class=\"form-control w-60 border-1\" />\r\n");
      out.write("                <label for=\"newapassmsg\" id=\"newapassmsg\" class=\"d-none errmsg form-label\">Password is Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-12 \">\r\n");
      out.write("                <input type=\"password\" id=\"newadmincpassword\" name=\"newadmincpassword\"\r\n");
      out.write("                  placeholder=\"Enter Your Confirm password...\" class=\"form-control w-60 border-1\" />\r\n");
      out.write("                <label for=\"newcpassmsg\" id=\"newcpassmsg\" class=\"d-none errmsg form-label\">Confirm Password is\r\n");
      out.write("                  Required</label>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"col-12 pb-4\">\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary w-100\">Sumbit</button>\r\n");
      out.write("              </div>\r\n");
      out.write("            </form>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <script src=\"./javascript/adminprofilepagevalidation.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
