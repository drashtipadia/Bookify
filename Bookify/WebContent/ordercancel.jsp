<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  
  String id=request.getParameter("orderid");
  
  
  try{
  PreparedStatement ps=con.prepareStatement("UPDATE ordertbl SET status=? WHERE order_id=?");
  ps.setString(1, "Cancel");
  ps.setString(2, id);
  ps.executeUpdate();
  out.print("<script> alert('Order Cancel') window.location='./OrderProfile.jsp';  </script>");
   
  }catch(Exception e)
  {
	  System.out.print(e);
	  out.print("<script> alert('Some Error Occur') </script>");
	  request.getRequestDispatcher("OrderProfile.jsp").include(request, response);
  }

%>