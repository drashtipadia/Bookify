<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<% 
    String id=request.getParameter("id");
    // out.println(id);
    int Id=Integer.parseInt(id);
    try{
    PreparedStatement ps=con.prepareStatement("DELETE FROM ordertbl WHERE order_id=?");
    ps.setInt(1,Id);
    ps.executeUpdate();
    out.print("<script> alert('Order Delete Successfully...') </script>");
	  request.getRequestDispatcher("adminOrder.jsp").include(request, response);
}
catch(Exception e)
{
	System.out.print(e); 
	out.print("<script> alert('Error...') </script>");
	  request.getRequestDispatcher("adminOrder.jsp").include(request, response);
}

%>