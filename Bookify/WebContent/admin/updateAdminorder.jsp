<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  
  String id=request.getParameter("id");
  
  
  try{
  PreparedStatement ps=con.prepareStatement("UPDATE ordertbl SET status=? WHERE order_id=?");
  ps.setString(1, "delivered");
  ps.setString(2, id);
  ps.executeUpdate();
  out.print("<script> alert('Order Delivered') </script>");
  request.getRequestDispatcher("adminOrder.jsp").include(request, response); 
  }catch(Exception e)
  {
	  System.out.print(e);
	  out.print("<script> alert('Some Error Occur') </script>");
	  request.getRequestDispatcher("adminOrder.jsp").include(request, response);
  }

%>