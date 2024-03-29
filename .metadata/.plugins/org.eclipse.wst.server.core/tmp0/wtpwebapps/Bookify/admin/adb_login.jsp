<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
   String name=request.getParameter("adminname");
   String password=request.getParameter("adminpass");
   try{
	   
	   Statement st=con.createStatement();
	   ResultSet rs;
	   rs=st.executeQuery("SELECT * FROM admin WHERE name='"+name+"' and password='"+password+"'");
	   int f=0;
	   while(rs.next())
	   {
		   f=1;
		   session.setAttribute("adminname",rs.getString("name"));
		   session.setAttribute("adminid",rs.getInt("id"));
		   %>
		    <script type="text/javascript"> alert("Login Successfully"); </script>
		    
		  <%
	   }
	   if(f==1)
	   {
		   response.sendRedirect("index.jsp"); 
	   }
	   else
	   {
		   %>
		    <script type="text/javascript"> alert("email or password wrong..."); </script>  
			<%  
			request.getRequestDispatcher("adminlogin.jsp").include(request, response);
	   }
   }catch(Exception e)
   {
	  out.println(e); 
   }
%>