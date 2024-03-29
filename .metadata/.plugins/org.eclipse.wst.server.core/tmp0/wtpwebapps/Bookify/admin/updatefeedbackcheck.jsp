<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
String id=request.getParameter("fid");

try{
	  PreparedStatement ps=con.prepareStatement("UPDATE feedback SET feed_status=? WHERE fid=?");
	  ps.setString(1, "True");
	  ps.setString(2, id);
	  ps.executeUpdate();
	  out.print("<script> alert('feedback display on client side'); window.location='./adminfeedback.jsp'; </script>");
	 // request.getRequestDispatcher("adminfeedback.jsp").include(request, response);
	  //response.sendRedirect("adminfeedback.jsp");
	  }catch(Exception e)
	  {
		  System.out.print(e);
	  }
%>
