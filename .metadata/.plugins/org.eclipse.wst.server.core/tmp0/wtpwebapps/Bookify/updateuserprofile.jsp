<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  

  String username=request.getParameter("user_name");
  String number=request.getParameter("user_number");
  String gender=request.getParameter("gender");
  String userid=session.getAttribute("id").toString();
  try{
  PreparedStatement ps=con.prepareStatement("UPDATE user SET name=? ,number=?,gender=? WHERE uid=?");
  ps.setString(1, username);
  ps.setString(2, number);
  ps.setString(3, gender);
  ps.setString(4, userid);
  ps.executeUpdate();
  out.print("<script> alert('Your Profile Update') </script>");
  request.getRequestDispatcher("userprofile.jsp").include(request, response);
  }catch(Exception e)
  {
	  System.out.print(e);
	  out.print("<script> alert('Some Error Occur') </script>");
	  request.getRequestDispatcher("userprofile.jsp").include(request, response);
  }

%>
