<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
  String email=request.getParameter("lemail");
  String password=request.getParameter("lpassword");
  
  try
  {
	  
	  Statement st=con.createStatement();
	  ResultSet rs;
	  rs=st.executeQuery("SELECT * FROM user WHERE email='"+email+"' and password='"+password+"'");
	   int f=0;
	  while(rs.next()){
		  f=1;
		  //out.println(rs.getInt(1));
		  //out.println(email);
		  //out.println(rs.getString(2));
		  session.setAttribute("name",rs.getString("name"));
		  session.setAttribute("id",rs.getInt("uid"));
	  }
	  if(f==1)
	  {
		  %>
		    <script type="text/javascript"> alert("Login Successfully"); </script>
		  <%
		  response.sendRedirect("Index.jsp");
	  }else
	  {
		  %>
		    <script type="text/javascript"> alert("email or password wrong..."); </script>
			  
			<%  
			//response.sendRedirect("Header.jsp?registererror=Invalid");
			request.getRequestDispatcher("Index.jsp").include(request, response);
	  }
  }catch(Exception e)
  {
	  out.println(e);
  }

%>