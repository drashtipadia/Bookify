<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>
<%
  Statement st=con.createStatement();
  ResultSet rs;
 String idcart=request.getParameter("id");
 String qty=request.getParameter("quantity");
// out.println(idcart);
// out.println(qty);
  rs=st.executeQuery("SELECT * FROM cart INNER JOIN product ON cart.pro_id=product.pro_id WHERE cart.cart_id='"+ idcart +"'");
   while(rs.next())
   {
	 
		   PreparedStatement ps=con.prepareStatement("UPDATE cart SET quantity=? WHERE cart_id=?");
		   ps.setString(1,qty);
		   ps.setString(2,idcart);
		   ps.executeUpdate();
		   response.sendRedirect("cart.jsp"); 
   }
   


%>