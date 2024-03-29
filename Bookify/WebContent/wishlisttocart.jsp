<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>

<% String wid=request.getParameter("wid");
   String pid=request.getParameter("pid");
   
   try{
	    PreparedStatement ps=con.prepareStatement("DELETE FROM wishlist WHERE wish_id=?");
	    ps.setString(1,wid);
	    ps.executeUpdate(); %>
	    <script> window.location="./db_cart.jsp?pid=<%= pid %>";</script>
		  
<%	}catch(Exception e)
	{
		System.out.print(e);
		 out.print("<script> alert('Error...') </script>");
		  request.getRequestDispatcher("adminfeedback.jsp").include(request, response);
	}
%>

