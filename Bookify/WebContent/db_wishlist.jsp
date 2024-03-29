<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
  String proid=request.getParameter("pid");
  String user=session.getAttribute("id").toString();
  try
  {
	  PreparedStatement ps=con.prepareStatement("INSERT INTO wishlist(pro_id,uid) VALUES(?,?)");
	  ps.setString(1, proid);
	  ps.setString(2, user);
	  ps.executeUpdate();
	  response.sendRedirect("mywishlist.jsp");
  }catch(Exception e)
  {
	  System.out.print(e);
  }



%>