<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  
  String id=request.getParameter("cat_id");
  String catename=request.getParameter("cat_name");
  
  try{
  PreparedStatement ps=con.prepareStatement("UPDATE category SET cat_name=? WHERE cat_id=?");
  ps.setString(1, catename);
  ps.setString(2, id);
  ps.executeUpdate();
  out.print("<script> alert('Category Update') </script>");
  request.getRequestDispatcher("admincategory.jsp").include(request, response);
  }catch(Exception e)
  {
	  System.out.print(e);
	  out.print("<script> alert('Some Error Occur') </script>");
	  request.getRequestDispatcher("admincategory.jsp").include(request, response);
  }

%>



