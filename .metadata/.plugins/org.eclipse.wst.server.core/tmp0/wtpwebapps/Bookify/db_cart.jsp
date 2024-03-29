<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*"  %>
<%
     String id=request.getParameter("pid");
String user=session.getAttribute("id").toString();
     int i=1;
     try{
    	 PreparedStatement ps=con.prepareStatement("INSERT INTO cart (uid,pro_id,quantity) VALUES(?,?,?)");
    	 ps.setString(1, user);
    	 ps.setString(2, id);
    	 ps.setInt(3,i);
    	 ps.executeUpdate();
    	 response.sendRedirect("cart.jsp");
    	 
    	 
     }catch(Exception e)
     {
    	 System.out.print(e);
     }
%>


