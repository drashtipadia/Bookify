<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
	String adminname=request.getParameter("newadminname");
    String password=request.getParameter("newadmincpassword");
    try
    {
    	
    	PreparedStatement ps=con.prepareStatement("INSERT INTO admin(name,password) VALUES(?,?)");
    	ps.setString(1,adminname);
    	ps.setString(2,password);
    	ps.executeUpdate();
    	//response.sendRedirect("adminProfile.jsp");
    	out.print("<script> alert('New Admin Successfully add'); window.location='./adminProfile.jsp'; </script>");
    	
    }catch(Exception e)
    {
    	out.println(e);
    }

%>