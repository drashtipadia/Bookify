<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    // out.println(id);
    int Id=Integer.parseInt(id);
    try{
    PreparedStatement ps=con.prepareStatement("DELETE FROM user WHERE uid=?");
    ps.setInt(1,Id);
    ps.executeUpdate();
    out.print("<script> alert('User Delete Successfully...') </script>");
	  request.getRequestDispatcher("adminregisteruser.jsp").include(request, response);
}
catch(Exception e)
{
	out.print("<script> alert('Some Error Occur') </script>");
	  request.getRequestDispatcher("adminregisteruser.jsp").include(request, response);
}

%>