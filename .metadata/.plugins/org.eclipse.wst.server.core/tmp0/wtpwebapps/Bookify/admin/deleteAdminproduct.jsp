<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
   
    int Id=Integer.parseInt(id);
    try{
    PreparedStatement ps=con.prepareStatement("DELETE FROM product WHERE pro_id=?");
    ps.setInt(1,Id);
    ps.executeUpdate();
    out.print("<script> alert('Product Delete Successfully...') </script>");
	  request.getRequestDispatcher("adminproduct.jsp").include(request, response);
}
catch(Exception e)
{
	System.out.print(e);
	 out.print("<script> alert('Error') </script>"); 
	 request.getRequestDispatcher("adminproduct.jsp").include(request, response);
}

%>