<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<% 
    String id=request.getParameter("id");
    // out.println(id);
    int Id=Integer.parseInt(id);
    try{
    PreparedStatement ps=con.prepareStatement("DELETE FROM contact WHERE cid=?");
    ps.setInt(1,Id);
    ps.executeUpdate();
    out.print("<script> alert('Contact Delete Successfully...') </script>");
	  request.getRequestDispatcher("admincontact.jsp").include(request, response);
}
catch(Exception e)
{
	System.out.print(e);
	 out.print("<script> alert('Error...') </script>");
	  request.getRequestDispatcher("adminfeedback.jsp").include(request, response);
}

%>