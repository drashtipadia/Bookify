<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
	String category=request.getParameter("newcategory");
    // out.println(category);
    try
    {
    	
    	PreparedStatement ps=con.prepareStatement("INSERT INTO category(cat_name) VALUES(?)");
    	ps.setString(1,category);
    	
    	ps.executeUpdate();
    	response.sendRedirect("admincategory.jsp");
    	
    }catch(Exception e)
    {
    	out.println(e);
    }

%>