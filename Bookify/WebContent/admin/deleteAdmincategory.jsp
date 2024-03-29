<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    // out.println(id);
    try{
    PreparedStatement ps=con.prepareStatement("DELETE FROM category WHERE cat_id=?");
    ps.setString(1,id);
    ps.executeUpdate();
    out.print("<script> alert('Category Delete Successfully...') </script>");
	  request.getRequestDispatcher("admincategory.jsp").include(request, response);
    }
    catch(Exception e)
    {
    	 System.out.print(e); 
    	 out.print("<script> alert('Error...') </script>");
   	  request.getRequestDispatcher("admincategory.jsp").include(request, response);
    }

%>