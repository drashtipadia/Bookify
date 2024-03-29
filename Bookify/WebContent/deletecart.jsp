<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    // out.println(id);
    int Id=Integer.parseInt(id);
    PreparedStatement ps=con.prepareStatement("DELETE FROM cart WHERE cart_id=?");
    ps.setInt(1,Id);
    ps.executeUpdate();
response.sendRedirect("cart.jsp");
%>