/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.91
 * Generated at: 2024-02-24 08:13:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;
import java.sql.*;

public final class userprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

 public Connection con;
 int Id; 
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/Header.jsp", Long.valueOf(1708279947123L));
    _jspx_dependants.put("/connection.jsp", Long.valueOf(1703817573301L));
    _jspx_dependants.put("/Footer.jsp", Long.valueOf(1708276966310L));
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
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("    <link rel=\"icon\" href=\"./images/icon.png\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("   ");
 
   Statement st=con.createStatement();
	  ResultSet rs,cart;
	  
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- NAVBAR START -->\r\n");
      out.write("    <nav class=\"navbar navbar-expand-md navbar-light bg-light \">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("           <a href=\"Index.jsp\" class=\"navbar-brand fs-2\"> <h1 > Bookify </h1> </a>\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\"\r\n");
      out.write("                data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("                aria-label=\"Toggle navigation\">\r\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"collapse navbar-collapse \" id=\"navbarSupportedContent\">\r\n");
      out.write("                <ul class=\"navbar-nav ms-auto\">\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"nav-link \" href=\"./Index.jsp\"> <i class=\"fa-solid fa-house\"></i> Home</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-item dropdown\">\r\n");
      out.write("                        <a class=\"nav-link dropdown\" href=\"#\" id=\"navbarDropdown\">Books</a>\r\n");
      out.write("                        <div class=\"dropdown-menu p-0\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                        ");
 rs=st.executeQuery("SELECT * FROM category");
                         while(rs.next()){
                        	 Id=rs.getInt("cat_id");
                         
      out.write("\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"product.jsp?id=");
      out.print( Id );
      out.write('"');
      out.write('>');
 out.print(rs.getString("cat_name")); 
      out.write("</a>\r\n");
      out.write("\r\n");
      out.write("                            ");
} 
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"nav-link \" href=\"./About.jsp\">About us</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"nav-link \" href=\"./Contact.jsp\">Contact</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                     ");
 if(session.getAttribute("name")!=null){ 
      out.write("\r\n");
      out.write("                      \r\n");
      out.write("                       <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"nav-link \" href=\"./mywishlist.jsp\"><i class=\"fa-regular fa-heart fa-xl\"></i></a>\r\n");
      out.write("                       </li>\r\n");
      out.write("                       <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"nav-link \" href=\"./cart.jsp\"><i class=\"fa-solid fa-cart-shopping  fa-xl\"></i></a>\r\n");
      out.write("                        \r\n");
      out.write("                       </li>  \r\n");
      out.write("                        \r\n");
      out.write("                        <li class=\"nav-item dropdown fluid\">\r\n");
      out.write("                            <a class=\"nav-link btn dropdown allbtn\" type=\"button\"\r\n");
      out.write("                            id=\"navbarDropdown\">");
 out.print(session.getAttribute("name")); 
      out.write("</a> \r\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-start\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                            <a class=\"dropdown-item\" href=\"./userprofile.jsp\">Profile</a>\r\n");
      out.write("                             <a class=\"dropdown-item\" href=\"./OrderProfile.jsp\">Oder</a>\r\n");
      out.write("                             <a class=\"dropdown-item\" href=\"logout.jsp\">Logout</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                       </li> \r\n");
      out.write("                        \r\n");
      out.write("                       ");
} 
                        else{ 
      out.write("\r\n");
      out.write("                           <li class=\"nav-item\">\r\n");
      out.write("                        <a class=\"btn allbtn\" type=\"button\" data-bs-toggle=\"modal\" data-bs-target=\"#loginModal\">Log\r\n");
      out.write("                            in</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                      ");
} 
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- NAVBAR END -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <nav class=\"navbar  navbar-dark bg-dark\">\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <form class=\"d-flex form-inline m-auto my-2 w-75\" action=\"search.jsp\">\r\n");
      out.write("                <input class=\"form-control me-2 w-75\" type=\"search\" name=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\r\n");
      out.write("            </form>\r\n");
      out.write("           \r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"modal fade\" id=\"loginModal\" aria-hidden=\"true\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <form class=\"modal-content\" id=\"log_form\" method=\"post\" action=\"db_login.jsp\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"modal-header \">\r\n");
      out.write("                    <h5 class=\"modal-title text-center\">LOGIN\r\n");
      out.write("                    </h5>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"alert alert-warning alert-dimissable fade show d-none\" id=\"loginError\" role=\"alert\">\r\n");
      out.write("                        Inavalid username and password\r\n");
      out.write("                        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"typeEmail\">Email</label>\r\n");
      out.write("                        <input type=\"text\" id=\"lemail\" name=\"lemail\" class=\"form-control\" />\r\n");
      out.write("                        <label for=\"lemailmsg\" id=\"lemailmsg\" class=\" d-none errmsg form-label\">Email is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"typePassword\">Password</label>\r\n");
      out.write("                        <input type=\"password\" id=\"lpassword\" name=\"lpassword\" class=\"form-control \" />\r\n");
      out.write("                        <label for=\"lpasswordmsg\" id=\"lpasswordmsg\" class=\"d-none errmsg form-label\">Password is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <p>Don't have an account? <a href=\"#\" data-bs-dismiss=\"modal\" data-bs-toggle=\"modal\"\r\n");
      out.write("                                data-bs-target=\"#register\">Sign Up</a>\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn allbtn\">login</button>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- login modal end-->\r\n");
      out.write("\r\n");
      out.write("    <!-- registration modal start -->\r\n");
      out.write("    <div class=\"modal fade\" id=\"register\" aria-hidden=\"true\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <form class=\"modal-content\" id=\"regform\" method=\"post\" action=\"db_registration.jsp\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"modal-header \">\r\n");
      out.write("                    <h5 class=\"modal-title text-center\">Registration\r\n");
      out.write("                    </h5>\r\n");
      out.write("                    <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\"></button>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"alert alert-warning alert-dimissable fade show d-none\" id=\"RegisterError\" role=\"alert\">\r\n");
      out.write("                        <p class=\"m-0\"> Already register....\r\n");
      out.write("                            <button type=\"button\" class=\"btn-close pl-25\" data-bs-dismiss=\"alert\"></button>\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"name\">Name</label>\r\n");
      out.write("                        <input type=\"text\" id=\"rname\" name=\"rname\" class=\"form-control\" />\r\n");
      out.write("                        <label for=\"rnamemsg\" id=\"rnamemsg\" class=\" d-none errmsg form-label\">First Name is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"number\">Phone number</label>\r\n");
      out.write("                        <input type=\"text\" id=\"rnumber\" name=\"rnumber\" class=\"form-control\" />\r\n");
      out.write("                        <label for=\"rnumbermsg\" id=\"rnumbermsg\" class=\"d-none errmsg form-label\">Phone number is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"typeEmail\">Email</label>\r\n");
      out.write("                        <input type=\"text\" id=\"remail\" name=\"remail\" class=\"form-control\" />\r\n");
      out.write("                        <label for=\"remailmsg\" id=\"remailmsg\" class=\"d-none errmsg form-label\">Email is Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"mt-3\">\r\n");
      out.write("                        <label class=\"form-label\" for=\"gender\">Gender: </label>\r\n");
      out.write("                        <div class=\"form-check form-check-inline\">\r\n");
      out.write("                            <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"inlineRadio1\"\r\n");
      out.write("                                value=\"male\">\r\n");
      out.write("                            <label class=\"form-check-label\" for=\"inlineRadio1\">Male</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-check form-check-inline\">\r\n");
      out.write("                            <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"inlineRadio2\"\r\n");
      out.write("                                value=\"female\">\r\n");
      out.write("                            <label class=\"form-check-label\" for=\"inlineRadio2\">Female</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"typePassword\">Password</label>\r\n");
      out.write("                        <input type=\"password\" id=\"rpassword\" name=\"rpassword\" class=\"form-control \" />\r\n");
      out.write("                        <label for=\"rpasswordmsg\" id=\"rpasswordmsg\" class=\"d-none errmsg form-label\">Password is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div>\r\n");
      out.write("                        <label class=\"form-label\" for=\"typePassword\">Confirm Password</label>\r\n");
      out.write("                        <input type=\"password\" id=\"rcpassword\" name=\"rcpassword\" class=\"form-control \" />\r\n");
      out.write("                        <label for=\"rcpmsg\" id=\"rcpmsg\" class=\"d-none errmsg form-label\">Confirm password is\r\n");
      out.write("                            Required</label>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"modal-footer\">\r\n");
      out.write("                    <input type=\"reset\" class=\"btn btn-secondary\" value=\"Reset\"></input>\r\n");
      out.write("                    <!-- class=\"btn btn-secondary\" -->\r\n");
      out.write("                    <input type=\"submit\" class=\"btn allbtn\" value=\"Submit\"></input>\r\n");
      out.write("                    <!-- class=\"btn btn-primary\" -->\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("<!-- registration modal end -->\r\n");
      out.write("\r\n");

//	 String error=request.getParameter("registererror");
  //     if("Invalid".equals(error))
  //     {
  //  	  out.println("<script> registerError();</script>");
   //    }
     

      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"./javascript/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("    <script src=\"./javascript/all.min.js\"></script>\r\n");
      out.write("    <script src=\"./javascript/script.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\r\n");

    
    Statement stuser=con.createStatement();
    ResultSet rsuser;


      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>User Profile</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write(" <section id=\"page-name\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container h-200\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col mt-5 text-center\">\r\n");
      out.write("                    <h1>My Profile</h1>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <section class=\"py-5\">\r\n");
      out.write("        <div class=\"container bg-light py-5\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row py-3\">\r\n");
      out.write("                <div class=\"col text-center\">\r\n");
      out.write("                    <h3>USER INFO </h3>\r\n");
      out.write("                    <span class=\"line\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"row m-5 \">\r\n");
      out.write("                <div class=\"col justify-content-around cardchage\">\r\n");
      out.write("                    <div class=\"card ms-auto  \">\r\n");
      out.write("                        <h1 class=\"text-center mt-3 text-center\">Details</h1>\r\n");
      out.write("\r\n");
      out.write("                       ");

                        rsuser=stuser.executeQuery("SELECT * FROM user WHERE uid='"+session.getAttribute("id")+"'");
                       while(rsuser.next())
                       {
                       
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <form id=\"userchangeprofileform\" method=\"post\" action=\"updateuserprofile.jsp\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"m-5 border-3 \">\r\n");
      out.write("                             <input type=\"text\" id=\"user_name\" name=\"user_name\" class=\"form-control\"  placeholder=\"Youe Name\"\r\n");
      out.write("                                    Value=\"");
 out.print(rsuser.getString("name")); 
      out.write("\">\r\n");
      out.write("                                    \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3\">\r\n");
      out.write("                                <input type=\"text\" id=\"user_email\" name=\"user_email\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"Youe Email\" Value=\"");
 out.print(rsuser.getString("email")); 
      out.write("\" disabled />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3 \">\r\n");
      out.write("                                <input type=\"text\" id=\"user_number\" name=\"user_number\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"Your Number\" Value=\"");
 out.print(rsuser.getString("number")); 
      out.write("\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3\">\r\n");
      out.write("                            <label>Gender: </label>\r\n");
      out.write("                                    <div class=\"form-check form-check-inline\">\r\n");
      out.write("                                         <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"inlineRadio1\" value=\"male\" ");
 if(rsuser.getString("gender").equals("male")){
      out.write("checked");
 } 
      out.write(" />\r\n");
      out.write("                                        <label class=\"form-check-label\" for=\"inlineRadio1\">Male</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"form-check form-check-inline\">\r\n");
      out.write("                                         <input class=\"form-check-input\" type=\"radio\" name=\"gender\" id=\"inlineRadio2\" value=\"female\" ");
 if(rsuser.getString("gender").equals("female")){
      out.write("checked");
 } 
      out.write(" />\r\n");
      out.write("                                        <label class=\"form-check-label\" for=\"inlineRadio2\">Female</label>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3\">\r\n");
      out.write("                                <input type=\"password\" id=\"user_password\" name=\"user_password\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"Youe Password\" disabled Value=\"");
 out.print(rsuser.getString("password")); 
      out.write("\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3 text-center\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn allbtn btn-block mb-4 \">Update</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("\r\n");
      out.write("                     ");
} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"row m-5 \">\r\n");
      out.write("                <div class=\"col justify-content-around cardchage\">\r\n");
      out.write("                    <div class=\"card ms-auto text-center \">\r\n");
      out.write("                        <h1 class=\"text-center mt-3\">Change Password</h1>\r\n");
      out.write("                        <form id=\"userchangepassform\" method=\"post\" action=\"userchangepassword.jsp\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"m-5 border-3 \">\r\n");
      out.write("                                <input type=\"password\" id=\"uoldpassword\" name=\"uoldpassword\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"Old Password....\" />\r\n");
      out.write("                                <label for=\"uoldpasswordmsg\" id=\"uoldpasswordmsg\" class=\"d-none errmsg form-label\">Old\r\n");
      out.write("                                    password is Required</label>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"m-5 border-3\">\r\n");
      out.write("                                <input type=\"password\" id=\"unewpassword\" name=\"unewpassword\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"New Password....\" />\r\n");
      out.write("                                <label for=\"unewpasswordmsg\" id=\"unewpasswordmsg\" class=\"d-none errmsg form-label\">New\r\n");
      out.write("                                    password is Required</label>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"m-5 border-3\">\r\n");
      out.write("                                <input type=\"password\" id=\"unewcpassword\" name=\"unewcpassword\" class=\"form-control\"\r\n");
      out.write("                                    placeholder=\"Confirm Password....\" />\r\n");
      out.write("                                <label for=\"uconpassmsg\" id=\"uconpassmsg\" class=\"d-none errmsg form-label\">Confirm\r\n");
      out.write("                                    password is Required</label>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <button type=\"submit\" class=\"btn allbtn btn-block mb-4\">Change Password</button>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("     <script src=\"./javascript/Userprofilevalidation.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\" />\r\n");
      out.write("  \r\n");
      out.write("  <link rel=\"stylesheet\" href=\"./css/style.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- Footer Start -->\r\n");
      out.write("  <footer id=\"main-footer\" class=\"text-light py-5 footer\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-6 px-4\" id=\"foot\">\r\n");
      out.write("          <h4>Bookify</h4>\r\n");
      out.write("          <p class=\"lead\">The Bookify is an independent online bookstore. We provide bestselling, new & used/refurbished books sourced from publishers and other vendors, which includes imported titles, dead stock from publishers etc. We deliver home across India.</p>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-6 px-4\" >\r\n");
      out.write("          <h4> About Bookify.com</h4>\r\n");
      out.write("          <ul class=\"footer-link\">\r\n");
      out.write("            <li><a href=\"./Index.jsp\">Home</a></li>\r\n");
      out.write("            <li><a href=\"./About.jsp\">About us</a></li>\r\n");
      out.write("            <li><a href=\"./privacypolicy.jsp\">Privacy Policy</a></li>\r\n");
      out.write("            <li><a href=\"./Contcat.jsp\">Contact</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- Footer End -->\r\n");
      out.write("  <footer id=\"footer\" class=\"bg-dark text-light py-3 footer\">\r\n");
      out.write("    <div class=\"container text-center\">\r\n");
      out.write("      <h4>Developed by: Drashti Padia</h4>\r\n");
      out.write("        ");
 if(session.getAttribute("name")!=null){ 
      out.write("\r\n");
      out.write("      <button class=\"btn btn-light\" data-bs-toggle=\"modal\" data-bs-target=\"#feedbackModal\">\r\n");
      out.write("        feedback\r\n");
      out.write("      </button>\r\n");
      out.write("        ");
} 
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer>\r\n");
      out.write("  <!-- Modal Feedback start -->\r\n");
      out.write("  <div class=\"modal fade text-dark\" id=\"feedbackModal\">\r\n");
      out.write("    <div class=\"modal-dialog\">\r\n");
      out.write("      <div class=\"modal-content\">\r\n");
      out.write("        <form id=\"fform\" method=\"post\" action=\"db_feedback.jsp\">\r\n");
      out.write("          <div class=\"model-header\">\r\n");
      out.write("            <h5 class=\"modal-title m-1 text-center\">Feedback</h5> \r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"modal-body\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label for=\"Name\">Name</label>\r\n");
      out.write("              <input type=\"text\" id=\"feedname\" name=\"feedname\" class=\"form-control\">\r\n");
      out.write("              <label for=\"fnamemsg\" id=\"fnamemsg\" class=\" d-none errmsg form-label\">Name is Required</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label for=\"Email\">Email</label>\r\n");
      out.write("              <input type=\"email\" id=\"femail\" name=\"femail\" class=\"form-control\" placeholder=\"abc@gmail.com\">\r\n");
      out.write("              <label for=\"femailmsg\" id=\"femailmsg\" class=\" d-none errmsg form-label\">Email is Required</label>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label for=\"Feedback\">Feedback</label>\r\n");
      out.write("              <textarea class=\"form-control\" id=\"feedback\" name=\"feedback\" placeholder=\"write here....\"></textarea>\r\n");
      out.write("              <label for=\"feedbackmsg\" id=\"feedbackmsg\" class=\" d-none errmsg form-label\">Some thing write in\r\n");
      out.write("                feedback</label>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"modal-footer\">\r\n");
      out.write("            <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Close</button>\r\n");
      out.write("            <input type=\"submit\" class=\"btn allbtn\" value=\"Submit\"></input>\r\n");
      out.write("          </div>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- Model feedback end -->\r\n");
      out.write("\r\n");
      out.write("  <script src=\"./javascript/bootstrap.js\"></script>\r\n");
      out.write("  <script src=\"./javascript/feedbackvalidation.js\"></script>\r\n");
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
